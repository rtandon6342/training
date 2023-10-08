agent {
  label 'agent-machine-label' // The label of the agent machine to run the pipeline on
}

stages {
  stage('Clone Repository') {
    steps {
      git branch: 'main', url: 'https://github.com/your-username/your-repository.git'
    }
  }

  stage('Move index.html to default path') {
    steps {
      bat 'move index.html C:\' // Copies the index.html file to the root of the C: drive
    }
  }

  stage('Run application') {
    steps {
      // The steps to run your application go here
    }
  }
}

post {
  always {
    // Cleanup steps go here
  }
}
