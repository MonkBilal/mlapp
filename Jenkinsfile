pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh '''python3 -m venv venv
. venv/bin/activate
make install
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\\
sudo chmod +x /bin/hadolint
'''
      }
    }

  }
}