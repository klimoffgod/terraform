pipeline {
  agent { label 'proxmox'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform') {
      steps {
        sudo sh './terraformw apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
