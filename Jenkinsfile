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
   stage('Deployment'){
     steps {
      withAWS(credentials: 'AWS_ADMIN', region: 'ap-south-1'){
      sh 'aws eks --region ap-south-1 update-kubeconfig --name Capstone'
      sh "/usr/bin/kubectl apply -f Deployment/Deployment.yml"
      sh "/usr/bin/kubectl get all"
      }
     }
  }
   stage("Cleaning up") {
        steps{
            echo 'Cleaning up...'
            sh "docker system prune"
        }
       }
}
  environment {
    registry = 'monkbilal/mlapp'
    registryCredential = 'dockerhub'
    dockerImage = ''
  }

}
