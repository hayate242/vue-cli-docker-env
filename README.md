# VueJS Docker environment

## requirements
- docker
- docker-compose
- make

## How to start development
### installation & start server
`$ make dev`
then, please go to http://localhost/

### down container
`$ make down`

### delete libraries
`$ make clean`

### add libraries using composer & npm
```shell script
docker-compose run --rm composer composer require xxxxxxxx
docker-compose run --rm node npm install xxxxxxx --save
```

# Wiki
## npmのビルドに失敗したら
`docker-compose run --rm node npm rebuild`

## 参考
https://jp.vuejs.org/v2/cookbook/dockerize-vuejs-app.html
