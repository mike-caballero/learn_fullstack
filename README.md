# Learning Fullstack

Mini-project to learn fullstack web app development. Stack:

- Python (backend): Flask as the web server with Gunicorn as the WSGI server.
- Typescript + React (frontend): developing static content for UI. Frontend calls backend for data ('hello world' str).
- Nginx for reverse proxy and serving static content.
- Docker for containerization and orchestration of backend, frontend, and web server.
- EC2 for hosting the web app.

### EC2 Instance Deployment
1. Launched t2.micro EC2 instance
2. SSH into instance
    - `ssh -i /Users/**/learn_fullstack_key.pem ec2-user@{Public IPv4 address}`
3. Install git and clone repo
    - `sudo yum install git -y`
    - `git clone https://github.com/mike-caballero/learn_fullstack.git`
4. Install [docker](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-container-image.html) and [docker compose](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
    - `sudo yum update -y`
    - `sudo yum install docker`
    - `sudo service docker start`
    - `DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}`
    - `mkdir -p $DOCKER_CONFIG/cli-plugins`
    - `curl -SL https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose`
    - `chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose`
5. Edit security group rule of EC2 instance to allow HTTP traffic from anywhere
6. Run `docker compose up --build` and go to the public IPv4 address to see the page!