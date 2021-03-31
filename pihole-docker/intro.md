# Setup Pi-hole using docker

## Docker
Docker is a tool to run apps and services without having to manually configure environments for each device that they run on. It works like a box with a predefined environment so that any program that runs in it will behave the same, no matter on what machine it is running. No more environment issues or "it worked fine on my machine"!

More information and documentation on Docker can be found [here](https://www.docker.com/).

## Pi-hole
Pi-hole is a service that removes ads by not delivering an IP address to the ad service. This can be used on your whole home network and works in websites and phone apps, it is basically a network-wide ad filter. It uses a list of known ad addresses to filter them out and the lists are ever increasing with more known ad pages.

More information and documentation on Pi-hole can be found [here](https://pi-hole.net/).

*This tutorial is made for Ubuntu with Docker already installed but works on other systems with slight modifications*.

*This guide uses some material from the [docker Pi-hole site](https://hub.docker.com/r/pihole/pihole).*
