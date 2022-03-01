#!groovy script
node{
   stage("checkout scm"){
       git url: 'https://github.com/ECOSMOB-tech/task-yash.git',branch: 'main'
		}
   stage("create docker image"){
      sh "docker build -t custom_nginx  ."
	  }
   stage("pushing image to registery"){
	sh "docker tag custom_nginx 172.31.46.244:5000/custom_nginx:1"   
	sh "docker push 172.31.46.244:5000/custom_nginx:1"   
	  }
   stage("ssh to remote docker server"){
     sshagent(['Docker_Dev_Server_SSH']) {
	  sh  'scp -o StrictHostKeyChecking=no  docker-compose.yml ubuntu@172.31.38.117:'
	  sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.38.117 docker-compose up -d'
	  }
	  }
}
