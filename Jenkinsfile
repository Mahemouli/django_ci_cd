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
                sonar-scanner \
  -Dsonar.projectKey=django_cicd \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://65.0.182.105:9000 \
  -Dsonar.login=sqp_0f509c2e216ba3bbf88ac13f6074d7648dc9994c
               
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

