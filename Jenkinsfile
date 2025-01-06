pipeline {
  agent none
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
        sh 'bash scripts/build.sh'
      }
    }

    stage('Tests') {
      agent any
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
