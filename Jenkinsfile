pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh '''python3 -m venv venv
. venv/bin/activate
make install
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\\
chmod +x /bin/hadolint
'''
      }
    }

  }
}