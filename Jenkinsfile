pipeline {
  agent {
    docker {
      image 'node:16-alpine'
    }

  }
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        sh 'rm -rf cicd-pipeline &&  git clone https://github.com/arulat/cicd-pipeline.git && cd cicd-pipeline '
      }
    }

    stage('Build App') {
      agent any
      steps {
        sh 'echo \' success\''
      }
    }

    stage('Tests') {
      agent any
      steps {
        sh 'echo \' success\''
      }
    }

    stage('Build Image') {
      agent {
        dockerfile true
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