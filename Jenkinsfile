pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'rm -rf cicd-pipeline &&  git clone https://github.com/arulat/cicd-pipeline.git && cd cicd-pipeline '
      }
    }

    stage('Build') {
      steps {
        nodejs('node') {
          sh '  bash scripts/build.sh'
        }

      }
    }

    stage('Tests') {
      steps {
        sh './scripts/test.sh'
      }
    }

  }
}