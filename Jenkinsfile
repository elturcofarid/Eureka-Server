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

        stage('Package') {
            steps {
                echo "-=- packaging project -=-"
                 sh "mvn package"
            }
        }

        stage('Build Docker image') {
            steps {
                echo "-=- build Docker image -=-"
                sh "sudo -S root docker build -t eureka-server:v10 ."
            }
        }

        stage('Run Docker image') {
            steps {
                echo "-=- run Docker image -=-"  
                sh "docker run --name eureka-server eureka-server:v1"
            }
        }

        
    }
    
post {

always {
echo "-=- remove deployment -=-"
sh "docker ps"
sh "docker stop eureka-server"
sh "docker rm eureka-server"

}


}
    
}
