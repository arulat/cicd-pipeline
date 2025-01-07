pipeline {
  agent any
  tools {
    nodejs 'node'
  }
  stages {
    stage('Checkout') {
      steps {
        sh 'echo \'success\''
      }
    }

    stage('Build') {
      steps {
        nodejs('node') {
          sh 'echo \'success\''
        }

      }
    }

    stage('Tests') {
      agent any
      steps {
        nodejs('node') {
          sh 'echo \'success\''
        }

      }
    }

    stage('Build Image') {
      steps {
        sh 'docker build -t cicd-app .'
      }
    }

  }
}
