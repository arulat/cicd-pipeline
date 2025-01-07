pipeline {
  agent any
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
        sh '# docker build -t cicd-app:test .'
      }
    }

    stage('Push Image') {
      steps {
        withCredentials(bindings: [usernamePassword(credentialsId: 'dockerhub', 
                                                         usernameVariable: 'DOCKER_USERNAME', 
                                                         passwordVariable: 'DOCKER_PASSWORD')]) {
          sh '''
                    echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                    docker tag cicd-app $DOCKER_USERNAME/cicd-app:latest
                    docker push $DOCKER_USERNAME/cicd-app:latest
                    '''
        }

      }
    }

  }
  tools {
    nodejs 'node'
  }
}