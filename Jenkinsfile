pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
            }
        }
        stage('Build Docker Image') {
      steps {
        sh '${WORKSPACE}/run_docker.sh'
      }
        }
    }
    
    }
