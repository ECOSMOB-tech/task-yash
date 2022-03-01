#!groovy script
node{
   stage("checkout scm"){
       git url: 'https://github.com/ECOSMOB-tech/task-yash.git',branch: 'main'
		}
   stage("create docker image"){
      sh "docker build -t 172.31.46.244:5000/manju-nginx ."
	  }
   stage("pushing image to registery"){
      sh "docker image tag 172.31.46.244:5000/manju-nginx 172.31.46.244:5000/manju-nginx"
	sh "docker push 172.31.46.244:5000/manju-nginx"   
	  }
   stage("ssh to remote docker server"){
     sshagent(['Docker_Dev_Server_SSH']) {
	  sh  'scp -o StrictHostKeyChecking=no  docker-compose.yml ubuntu@172.31.46.244:'
	  sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.46.244 docker-compose up -d'
	  }
	  }
}
