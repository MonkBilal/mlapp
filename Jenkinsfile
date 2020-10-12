pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh '''python3 -m venv venv
. venv/bin/activate
make install

'''
      }
    }

    stage('Linting') {
      steps {
        sh '''deactivate
make lint'''
      }
    }

  }
}