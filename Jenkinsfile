pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        sh 'git clone https://github.com/arulat/cicd-pipeline.git && cd cicd-pipeline'
      }
    }

  }
}