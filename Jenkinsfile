pipeline {
    agent any
    
    tools {
        maven 'M3'
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to UAT') {
            steps {
                script {
                    // Print current directory and list files
                    sh 'pwd'
                    sh 'ls -l'
                    // Run deploy-to-uat.sh script
                    sh 'bash deploy-to-uat.sh'
                }
            }
        }
    }
}
