pipeline {
     agent {
        docker { image 'library/amazonlinux' }
    }
    stages {
        /* "Build" and "Test" stages omitted */

        stage('Check out') {
            steps {
                sh 'git clone https://github.com/cuongphung0503/auto.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t testdemo .'
            }
        }
    }
}
