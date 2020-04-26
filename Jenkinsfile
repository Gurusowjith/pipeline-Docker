node{
   stage('SCM Checkout'){
       git credentialsId: 'git-creds', url: 'https://github.com/shiva0327/pipeline.git'
   }
   stage('Mvn Package'){
     def mvnHome = tool name: 'maven-3', type: 'maven'
     def mvnCMD = "${mvnHome}/bin/mvn"
     sh "${mvnCMD} clean package"
   }
   stage('Build Docker Image'){
     sh 'docker build -t shivastunts/vedic-service-app:1.0.0 .'
   }
   stage('Push Docker Image'){
     withCredentials([string(credentialsId: 'docker-pwd', variable: 'docker-pwd')]) {
        sh "docker login -u shivastunts -p ${docker-pwd}"
     }
     sh 'docker push shivastunts/vedic-service-app:1.0.0'
   }
   stage('Run Container on Dev Server'){
     def dockerRun = 'docker run -p 8080:8080 -d --name vedic-service-app shivastunts/vedic-service-app:1.0.0'
     sshagent(['key']) {
       sh "ssh -o StrictHostKeyChecking=no ubuntu@13.127.72.8 ${dockerRun}"
     }
   }
}

