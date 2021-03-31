# Setting up docker

*Docker is available in this tutorial, but on your local device you must first install docker. Resources can be found [here](https://docs.docker.com/get-docker/).*

## Docker compose
Docker compose is a tool for running multiple docker containers and creating and starting them from a single command. It is simple to use and easy to get started, the only trick is to create a working docker compose configuration file (docker-compose.yaml) but in this tutorial that has already been done for you. The file includes which service to run the docker container with, ports to use and temporary files.

## Moving on
Okay, now we will get started with the Docker process. **Create a file called docker-compose.yaml and copy-paste the contents below into it and save**. Tip: You can use `nano docker-compose.yaml` to create and edit the file or `vim docker-compose.yaml` if you know what you're doing.

This is what you put in your file:
```yaml
version: "3"

# More info at https://github.com/pi-hole/docker-pi-hole/ and https://docs.pi-hole.net/
services:
  pihole:
    container_name: pihole
    image: pihole/pihole:latest
    ports:
    # The service uses many ports for DNS and web-traffic
      - "53:53/tcp" # DNS
      - "53:53/udp" # DNS
      - "67:67/udp" # DHCP
      - "80:80/tcp" # HTTP
      - "443:443/tcp" # HTTPS
    environment:
      # Set this to your time-zone
      TZ: 'Sweden/Stockholm'
    # Volumes store your data between container upgrades
    volumes:
      - './etc-pihole/:/etc/pihole/'
      - './etc-dnsmasq.d/:/etc/dnsmasq.d/'
    restart: unless-stopped
```

## Creating the docker container

Now that you have a docker-compose configuration you can **use the following command to list created docker containers**.

```
docker-compose ps
```

As you can see, it is empty so you can go right ahead and **run the following command to install and create the container**.

```
docker-compose up --no-start
```

We use the ``--no-start`` flag because we do not want to start the container at this step as the following step will have another DNS configuration.

<span style="color:red">

*Be careful not to go to the next step until you have created the docker container as the next step will disable normal DNS lookups and you will no longer be able to build the container!*

</span>
