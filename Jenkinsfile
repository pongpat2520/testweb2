pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git url: 'https://github.com/pongpat2520/testweb2.git' , branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo 'No build needed for static site'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                mkdir -p /tmp/html
                cp index.html /tmp/html/
                '''
            }
        }
    }
}
