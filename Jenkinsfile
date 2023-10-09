pipeline {
  agent {
    label 'agent-2' // The label of the agent machine to run the pipeline on
  }

  stages {
    stage('Clone Repository') {
      steps {
        git branch: 'main', url: 'https://github.com/rtandon6342/training.git'
      }
    }

    stage('Move index.html to default path') {
      steps {
        bat 'move index.html C:\\inetpub\\wwwroot' // Copies the index.html file to the root of the C: drive
      }
    }
  }
}  
