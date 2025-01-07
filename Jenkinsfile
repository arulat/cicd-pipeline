pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'rm -rf cicd-pipeline &&  git clone https://github.com/arulat/cicd-pipeline.git && cd cicd-pipeline '
      }
    }

  }
}