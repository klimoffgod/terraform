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
        stage('git clone ansible and  get IP address VM and run ansible script') {
            steps {
                sh '''
                git clone https://github.com/klimoffgod/ansible.git
                cd ansible
                ls -la
                sh get_ip_vm
                ansible-playbook Playbook.yml -i hosts -vvvvvvvvvvv
                '''
                }
        }
    }
    post {
    success {
        cleanWs()
        } 
    }    
}
