pipeline {
      environment {
            registry = "012881927014.dkr.ecr.ap-northeast-1.amazonaws.com/testauto" 
            registryCredential = 'creRegistry'
      }
      agent any
    stages {
        /* "Build" and "Test" stages omitted */
   
        stage('Checkout') {
            steps {
                git 'https://github.com/cuongphung0503/auto.git'
            }
         }
 
         stage('Build') {
             steps {
                  /* sh 'ls -ll'
                   sh 'docker build -t test .' */
                 script { 
                   //configure registry
                   docker.withRegistry('https://012881927014.dkr.ecr.ap-northeast-1.amazonaws.com', 'ecr:ap-northeast-1:42a8999c-69bb-4e68-8120-9d4fe1f06854') {

                  //build image
                  def customImage = docker.build("my-image:${env.BUILD_ID}")

                  //push image
                  customImage.push()
                  } 
             }
         }          
     }
 }
}
