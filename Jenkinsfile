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
        sh 'bash scripts/build.sh'
      }
    }

    stage('Tests') {
      steps {
        sh './scripts/test.sh'
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