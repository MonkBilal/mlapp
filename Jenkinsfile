pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh '''python3 -m venv venv 
source venv/bin/activate 
make install

'''
      }
    }

    stage('Linting') {
      steps {
        sh '''source venv/bin/activate
make lint'''
      }
    }

  }
}