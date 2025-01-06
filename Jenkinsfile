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
        sh 'sudo apt update && sudo apt install node && sudo apt install npm'
        sh 'cd scripts && bash build.sh'
      }
    }

  }
}