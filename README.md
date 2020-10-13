# DOCKER README

```terminal
  $ docker run \
      -it \
      --rm \
      -v /app/node_modules \
      -v $PWD:/app \
      -p 3000:3000 \
      -e CHOKIDAR_USEPOLLING=true \
      username/frontend
```
