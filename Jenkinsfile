pipeline {
	agent any
	stages {
		stage('Build'){
			sh './gradlew build --no-daemon'
		}
		post{
			success {
				archiveArtifacts 'dist/trainSchedule.zip'
			}
		}
	}

}
