pipeline {
    agent any

    environment {
        ORG_NAME = "onlysystems"
        APP_NAME = "servicio-usuarios"
        APP_CONTEXT_ROOT = "/"
        APP_LISTENING_PORT = "8080"
        TEST_CONTAINER_NAME = "ci-${APP_NAME}-${BUILD_NUMBER}"
    }

    stages {
        stage('Compile') {
            steps {
                echo "-=- compiling project -=-"
                sh "mvn package"
            }
        }

        stage('Package') {
            steps {
                echo "-=- packaging project -=-"
                 
            }
        }

        stage('Build Docker image') {
            steps {
                echo "-=- build Docker image -=-"
                
            }
        }

        stage('Run Docker image') {
            steps {
                echo "-=- run Docker image -=-"
       
            }
        }

        
    }

    
}
