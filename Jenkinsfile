pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        sh 'rm -rf cicd-pipeline &&  git clone https://github.com/arulat/cicd-pipeline.git && cd cicd-pipeline '
      }
    }

    stage('Build App') {
      steps {
        sh 'cd scripts'
      }
    }

    stage('Tests') {
      steps {
        sh 'echo \'tests success\''
      }
    }

    stage('Build Image') {
      agent {
        docker {
          image 'node:7.8.0'
        }

      }
      steps {
        sh 'docker build -t app .'
      }
    }

  }
  tools {
    nodejs '23.5.0'
  }
}