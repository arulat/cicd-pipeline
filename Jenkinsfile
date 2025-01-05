pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      agent any
      steps {
        git(url: 'git clone https://github.com/arulat/cicd-pipeline.git', branch: 'main', credentialsId: '32a4d141-e68b-48e3-8024-1d3959a7f8b9')
        sh 'cd cicd-pipeline'
      }
    }

  }
}