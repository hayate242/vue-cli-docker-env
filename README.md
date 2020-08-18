# VueJS Docker environment

## requirements
- docker
- docker-compose
- make

## How to start development
### installation & start server
`$ make up`
then, please go to http://localhost/

### down container
`$ make down`

### delete libraries
`$ make clean`

### add libraries using composer & npm
```shell script
docker-compose run --rm node npm install xxxxxxx --save
```

## Start devlopment
```shell script
docker-compose run --rm node npm run serve
```

## build production
```shell script
docker-compose run --rm node npm run build
```

# Wiki
## npmのビルドに失敗したら
`docker-compose run --rm node npm rebuild`

## 参考
https://jp.vuejs.org/v2/cookbook/dockerize-vuejs-app.html
