# ssh-proxy
ssh-proxy is a stupid simple docker container that acts as a socks4/5 proxy to an SSH server.

## Build
```bash
git clone https://github.com/likogann/docker-ssh-proxy
docker build -t ssh-proxy:latest .
```

## Environment Variables
It requries four environment variables.

`SSH_IP`
Default: `127.0.0.1`
The IP address of the SSH server

`SSH_PORT`
Default: `22`
The port of the SSH server

`SSH_USERNAME`
Default: `root`
Username of SSH user

`SSH_PASSWORD`
Password for SSH user