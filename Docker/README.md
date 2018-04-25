# Docker build

```
docker build -t codeigniter:dev ./docker
```

# Docker container起動

## for windows
```
docker run -itd -p 80:80 -v E:\Git/codeigniter:/home/source/sites --privileged --name="codeigniter" codeigniter:dev
```

## for mac
```
docker run -itd -p 80:80 -v $(pwd):/home/source/sites --privileged --name="codeigniter" codeigniter:dev
```

# Docker container 接続
```
docker exec -it codeigniter bash
```