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
                    sh 'docker build . -t jc02/udacity-capstone-project'
                    }
                }
         }
             
         stage('Push Docker Image') {
             when {
                branch 'master'
            }
            steps {
                sh 'dockerpath=jc02/udacity-capstone-project'
                sh 'echo "Docker ID and Image: $dockerpath"'
                sh 'echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin'
                sh 'docker tag $dockerpath:latest $dockerpath'
                sh 'docker push $dockerpath'

            }
         
            }
        }
}
}

