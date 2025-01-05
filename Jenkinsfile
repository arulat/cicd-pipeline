pipeline {
  agent any
  stages {
    stage('Test') {
      agent any
      steps {
        echo 'test $foo'
      }
    }

  }
  environment {
    foo = 'bar'
  }
}