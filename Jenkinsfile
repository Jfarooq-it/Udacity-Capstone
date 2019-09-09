pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
            }
        }
         stage('Build Docker Image') {
            when {
                branch 'master'
            }
            steps {
                script {
                    sh 'docker run --name testimage -d -p 8003:80 nginx'
                    }
                }
            }
        }
      
