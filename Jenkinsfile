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
                script {
                withDockerRegistry([ credentialsId: "docker_hub_login", url: "https://registry.hub.docker.com" ]) {
                sh 'docker tag jc02/udacity-capstone-project:latest jc02/udacity-capstone-project'
                sh 'docker push jc02/udacity-capstone-project'
            }
         }
            }
        }
}
}

