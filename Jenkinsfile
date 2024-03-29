pipeline {
    agent any
    
    tools{
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
                sh 'deploy-to-uat.sh'
            }
        }
    }
}