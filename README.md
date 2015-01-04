# Swabbie

A simple Docker container to periodically (once an hour) clean out exited
containers and dangling images on the host machine. This is useful if you
create and kill containers often and want them automatically cleaned up.

To quickly fire up Swabbie on your machine, run the following.

```
docker run \
    --volume=/usr/bin/docker:/usr/bin/docker \
    --volume=/var/run/docker.sock:/var/run/docker.sock \
    --detach=true \
    --name=swabbie \
    mminer/swabbie:latest
```

Note that the Docker binary and socket must be shared with the container for it
to function properly.
