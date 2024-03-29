pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to UAT') {
            steps {
                sh 'deploy-to-uat.sh'
            }
        }
    }
}