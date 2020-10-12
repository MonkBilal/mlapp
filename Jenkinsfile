pipeline {
  environment { 
        registry = "monkbilal/mlapp" 
        registryCredential = 'dockerhub' 
        dockerImage = '' 
    }
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
	script { 
        dockerImage = docker.build registry + ":latest" 
        }
      }
    }

    stage('Upload to dockerhub') {
      steps {
        script { 
         docker.withRegistry( '', registryCredential ) { 
         dockerImage.push() 
       }
      }
    }

  }
}
}
