# xdebug-remote-exercise
Xdebug remote debugging exercise with Docker

![demo](demo.gif)

```bash
$ docker-compose up -d
$ curl http://localhost:8080?XDEBUG_SESSION_START=name
$ docker-compose logs -f debugger
```
