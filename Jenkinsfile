node{
    stage('scm checkout'){
        git 'https://github.com/shiva0327/pipeline.git'
         }
          
    stage('maven package'){
        def mvnHome = tool name: 'maven-3.6.3', type: 'maven'
        def mvnCMD = "${mvnHome}/bin/mvn"
        sh "${mvnCMD} clean package"
        }
        
    stage('Build Docker image'){
        sh 'docker build -t shivastunts/vedic-service-app:1.0.0 .'
        }

}

