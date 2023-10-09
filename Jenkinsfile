pipeline {
  agent any
  stages {
    stage('Build') {
      agent windows
      steps {
        // Build steps that will run on Windows agents
      }
    }
    stage('Test') {
      agent ubuntu
      steps {
        // Test steps that will run on Ubuntu agents
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
