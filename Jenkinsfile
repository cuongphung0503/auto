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
                   sh 'ls -ll'
                   sh 'docker build -t auto .'
                /* script {
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push()
                } */
             }
         }
     }
 }
