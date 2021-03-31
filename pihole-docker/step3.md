# Running the docker container

You have now created a docker container that is ready to run. If you run `docker-compose ps` again you can see it in the list, with the code `Exit` as it has not been started yet.

**Now run the container using the command below**. The `up` command will start all containers in the `docker-compose.yaml` file.

```
docker-compose up --detach
```

*The --detach flag makes the container run in the background so you can execute other commands in the meantime*.

**Now run `docker-compose ps` again** and you will see that the container has started.

```
docker-compose ps
```

The container is up and running and using the specified ports, you can now continue to the final step.
