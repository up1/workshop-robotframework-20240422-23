pipeline {
    agent any

    stages {
        stage('Run test') {
            steps {
                git branch: 'main', url: 'https://github.com/up1/workshop-robotframework-20240422-23.git'
                sh 'robot testcases/login-success.robot'
            }
        }
    }
    
    post {
    always {
      robot archiveDirName: 'robot-plugin', outputPath: '.', overwriteXAxisLabel: '', passThreshold: 100.0, unstableThreshold: 100.0
    }
  }
}
