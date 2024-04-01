pipeline{
    agent any
    stages {
    
        stage('Setup Python Virtual ENV for dependencies'){
       
      steps  {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''}
        }
       stage('sonar'){
            steps {
                sh '''
               sudo sonar-scanner \
  -Dsonar.projectKey=django_cicd1 \
  -Dsonar.sources=/var/lib/jenkins/workspace/Pipeline-tools/app \
  -Dsonar.host.url=http://13.201.52.35:9000 \
  -Dsonar.login=sqp_5bab19c8145c130169361c0bae5f825cd2e49676
               
  '''
            }
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod 777 gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}

