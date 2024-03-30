pipeline {
    agent any
    stages {
        stage('Move file to project directory') {
            steps {
                sh 'mv /var/lib/jenkins/workspace/django\ cicd/scripts/envsetup.sh /var/lib/jenkins/workspace/django cicd/'
                sh 'mv /var/lib/jenkins/workspace/django\ cicd/scripts/gunicorn.sh /var/lib/jenkins/workspace/django cicd/'
                sh 'mv /var/lib/jenkins/workspace/django\ cicd/scripts/nginx.sh /var/lib/jenkins/workspace/django cicd/'
            }
        }
        stage('Setup Python Virtual ENV for dependencies') {
            steps {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
        }
        stage('Setup Gunicorn Setup') {
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('Setup NGINX') {
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}


