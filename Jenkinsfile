pipeline {

	environment {
		registry = '971213/jenkins-training'
		registryCredential = 'dockerhub'
	}
	agent {
		label 'my-slave-agent'
	}
	stages {
		stage('Building image'){
			steps{
				 script{
				 	dockerImage = docker build registry + ":my-app"
				 }
			}
		}
		stage('Deploy image'){
			steps{
				script {
					docker.withRegistry( '', registryCredential ){
						dockerImage.push()
					}
				}
			}
		}
		stage('Remove unused docker image'){
			steps{
				sh "docker rmi $registry:my-app"
			}
		}

	}

}
