pipeline {
    agent { label 'proxmox'}
    tools {
        terraform 'terraform'
    }
    
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
    post {
    success {
      cleanWs()
    }
  }
}
