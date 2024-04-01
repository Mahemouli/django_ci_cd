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
  -Dsonar.projectKey=django_cicd \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://3.108.223.31:9000 \
  -Dsonar.login=squ_1cbd1169ac6cc5e3eb027ec5dce238cf182c75dc
               
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

