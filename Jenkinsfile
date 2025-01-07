pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/arulat/cicd-pipeline.git', branch: 'main', credentialsId: '503b1ca7-3591-47ff-8966-f206f024ec71')
        dir(path: 'cicd-pipeline') {
          sh 'ls -al'
        }

      }
    }

  }
}