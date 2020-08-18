FROM node:lts-alpine

# 静的コンテンツを配信するシンプルな http サーバをインストールする
RUN npm install -g http-server

# カレントワーキングディレクトリとして 'app' フォルダを指定する
WORKDIR /app

EXPOSE 8080
CMD [ "http-server", "dist" ]