Test Job

Stack:
- Web application (backend), any application will do, you can even write your own.
- Ansible.
- Nginx.
- Docker, docker-compose, swarm.
- Ubuntu host

Task:
- Set up the stack.
- Write ansible role that will deploy the application to the container, and the deployment should be seamless, i.e. without application downtime. 
- If you are able and willing, you can also check if the application is running and switch traffic to it only after a positive response, otherwise a rollback will be required.

```
apt install docker.io nginx
apt-get install python3-pip
apt install ansible
git clone https://github.com/ILyaAX/rolling-deploy.git
docker build . -t backend:0.1-1 
docker build . -t backend:0.1-2
docker run -d -p 127.0.0.1:5000:5000 backend:0.1-1
ansible-playbook docker-deploy.yml
```