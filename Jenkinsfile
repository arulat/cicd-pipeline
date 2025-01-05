pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        sh 'git clone https://$GIT_USER:$GIT_PASS@github.com/arulat/cicd-pipeline.git && cd cicd-pipeline'
      }
    }

  }
}