pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to QA') {
            steps {
                sh 'deploy-to-qa.sh'
            }
        }
        stage('Deploy to UAT') {
            steps {
                sh 'deploy-to-uat.sh'
            }
        }
        stage('Deploy to Prod') {
            steps {
                sh 'deploy-to-prod.sh'
            }
        }
    }
}