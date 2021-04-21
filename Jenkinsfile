pipeline {
	agent any
	stages {
		stage('Build'){
			steps {
				sh './gradlew build --no-daemon'
			}
			post {
				success {
					archiveArtifacts 'dist/trainSchedule.zip'
				}
			}
		}

	}

}
