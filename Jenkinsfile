pipeline {
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
                 script {
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push()
                }
             }
         }
     }
 }
