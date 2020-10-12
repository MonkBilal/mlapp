pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh '''make setup
make install
'''
      }
    }

    stage('Linting') {
      steps {
        sh 'make lint'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build . -t monkbilal/mlapp:latest'
      }
    }

    stage('Upload to dockerhub') {
      steps {
        sh 'docker push monkbilal/mlapp:latest'
      }
    }

  }
}