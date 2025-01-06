pipeline {
  agent any
  tools {
    nodejs '23.5.0'
  }
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        sh 'rm -rf cicd-pipeline &&  git clone https://github.com/arulat/cicd-pipeline.git && cd cicd-pipeline '
      }
    }

    stage('Build App') {
      steps {
        nodejs('node_23') {
          sh 'cd scripts && bash build.sh'
        }

      }
    }

  }
}
