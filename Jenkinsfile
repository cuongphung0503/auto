pipeline {
      agent {
         docker { image 'library/amazonlinux' }
     }
    stages {
        /* "Build" and "Test" stages omitted */
   
        stage('Checkout') {
            steps {
                sh 'git status'
            }
         }
 
         stage('Build') {
             steps {
                 sh 'docker build -t testdemo .'
             }
         }
     }
 }
