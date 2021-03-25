# Setup Pi-hole using docker

## Docker
Docker is a tool to run apps and services without having to manually configure environments for each device that they run on. It is like a box with a predefined environment that you can run your program in that will always be the same to the program. No more environment issues or "it worked fine on my machine"!

## Pi-hole
Pi-hole is a service that removes ads by not delivering an IP address to the ad service. This can be used on your whole home network and works in websites and phone apps, it is basically a network-wide ad filter. It uses a list of known ad addresses to filter them out and the lists are ever increasing with more known ad pages.


*This guide uses some material from the [docker Pi-hole site](https://hub.docker.com/r/pihole/pihole).*
