pipeline {
  agent any
  stages {
    stage('Clone Repository') {
      agent 'agent-2'
      steps {
        git branch: 'main', url: 'https://github.com/rtandon6342/training.git'
      }
    }

    stage('Move index.html to default path') {
      agent 'agent-2'
      steps {
        bat 'move index.html C:\\inetpub\\wwwroot' // Copies the index.html file to the root of the C: drive
      }
    }
    stage('Clone Repository') {
      agent 'agent'
      steps {
        // Clone the repository
        git branch: 'main', url: 'https://github.com/rtandon6342/training.git'
      }
    }

    stage('Move index.html to default path') {
      agent 'agent'
      steps {
        // Move the index.html file to the default path
        sh 'sudo mv index.html /var/www/html/'
      }
    }
    stage('Deploy') {
      agent any
      steps {
        // Deploy steps that will run on both Windows and Ubuntu agents
      }
    }
  }
}
