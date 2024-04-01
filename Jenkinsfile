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
  -Dsonar.projectKey=django \
  -Dsonar.sources=/var/lib/jenkins/workspace/Pipeline-tools/app \
  -Dsonar.host.url=http://192.168.155.122:9000 \
  -Dsonar.token=sqp_826b1474e9035b73cab949e0154e7879c4b7b04d
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

