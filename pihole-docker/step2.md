# Setting up docker

*Docker is available in this tutorial, but on your local device you must first install docker. Resources can be found [here](https://docs.docker.com/get-docker/).*

## Docker compose
Docker compose is a tool for running multiple docker containers and creating and starting them from a single command. It is simple to use and easy to get started, the only trick is to create a working configuration file but in this tutorial that has already been done for you.

## Moving on
Okay, now we will get started with the Docker process. **Create a file called docker-compose.yaml and fill it with the contents below**. Tip: You can use `$ nano docker-compose.yaml` to create and edit the file or `$ vim docker-compose.yaml` if you're feeling bold.

```yaml
version: "3"

# More info at https://github.com/pi-hole/docker-pi-hole/ and https://docs.pi-hole.net/
services:
  pihole:
    container_name: pihole
    image: pihole/pihole:latest
    ports:
    # The service uses many ports for DNS and web-traffic
      - "53:53/tcp"
      - "53:53/udp"
      - "67:67/udp"
      - "80:80/tcp"
      - "443:443/tcp"
    environment:
      TZ: 'Sweden/Stockholm'
    # Volumes store your data between container upgrades
    volumes:
      - './etc-pihole/:/etc/pihole/'
      - './etc-dnsmasq.d/:/etc/dnsmasq.d/'
    restart: unless-stopped
```

## Creating the docker container

Now that you have a docker-compose configuration you can go right ahead and **run the following command to install and create the container**.

```
docker-compose up --no-start
```

<span style="color:red">

*Be careful not to go to the next step until you have created the docker container as the next step will disable normal DNS lookups and you will no longer be able to build the container!*

</span>
