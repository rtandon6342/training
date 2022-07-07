pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                sh 'sleep 10'
            }
        }

        stage('Parallel_stage') {
            parallel {
                stage(parallel_1) {
                    steps {
                        sh 'echo "Hello World"'
                        sh 'sleep 10'
                    }
                }
                stage(parallel_2) {
                    steps {
                        sh '''
                        echo "Hello World"
                        touch new.txt
                        pwd
                        ls
                        sleep 15
                        '''
                    }
                }
            }
        }

        stage('Hello_Again_test') {
            steps {
                echo 'Hello World'
                sh 'sleep 10'
            }
        }
    }
}
