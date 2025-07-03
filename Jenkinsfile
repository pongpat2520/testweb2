pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/pongpat2520/testweb2.git'
    }

    stages {
        stage('Clone') {
            steps {
                git url: "${GIT_REPO}", branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo "No build step for static site"
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    docker stop web-simple || true
                    docker rm web-simple || true
                    docker run -d --name web-simple -p 8888:80 \
                        -v $PWD:/usr/share/nginx/html:ro nginx
                '''
            }
        }
    }
}
