node{
    stage('scm checkout'){
        git credentialsId: 'd3ce0802-e860-4a6c-a1ee-e8f1b5f6bd9b', url: 'https://github.com/sureshsk-hub/Vedikas_customerService.git'
          }
          
    stage('maven package'){
        def mvnHome = tool name: 'maven-3.6.3', type: 'maven'
        def mvnCMD = "${mvnHome}/bin/mvn"
        sh "${mvnCMD} clean package"
        }
        
    stage('Build Docker image'){
        
        sh 'docker build -t motasuresh/vedic-service-app:1.0.0 .'
    }

