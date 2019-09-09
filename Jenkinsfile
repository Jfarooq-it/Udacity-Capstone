pipeline {
    agent any
    stages {
	    
        stage('Build') {
            steps {
                echo 'Running build automation'
            }
        }
        
        stage('Lint HTML') {
        steps {
          sh 'tidy -q -e *.html'
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
                 withDockerRegistry( credentialsId: "docker_hub_login") {
                 sh 'docker tag jc02/udacity-capstone-project:latest jc02/udacity-capstone-project'
                 sh 'docker push jc02/udacity-capstone-project'

            }
                }
            }
        }
	    
	    stage('Build Docker Container') {
      		steps {
			sh 'docker container rm udacity-capstone -f'
        		sh 'docker run --name udacity-capstone -d -p 8000:80 jc02/udacity-capstone-project'
      }
    }

    
    
    
    
    }
}

