pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        sh 'rm -rf cicd-pipeline &&  git clone https://github.com/arulat/cicd-pipeline.git'
        sh 'cd cicd-pipeline'
      }
    }

  }
}