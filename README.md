# Docker Sample 1

シンプルなイメージを作成＋コンテナを起動するサンプル

## How To
### リポジトリのクローン

```
$ git clone https://github.com/KeitaMoromizato/docker-sample-1
$ cd docker-sample-1
```

### イメージの作成

リポジトリ直下の`Dockerfile`を元にイメージを作成する。`sudo`は必要なければ省く。

```
$ sudo docker build -t docker-sample:1.0 .
```

### イメージの確認

イメージが生成されたことを確認する。`docker-sample`という名前のものができているはず。

```
$ sudo docker images
```

### コンテナの起動

先ほど作成したイメージを元にコンテナを起動する。`Hello World!`と1秒ごとに表示されるコンテナが起動する。

```
$ sudo docker run docker-sample:1.0
```

### コンテナの削除

起動したコンテナを、別コンソールから下記コマンドを実行して強制停止する。コンテナIDは、先ほどの`docker images`コマンドで調べる。

```
$ sudo docker rm -f <コンテナID>
```

## Dockerfile

イメージの内容は`Dockerfile`で確認できる。node.jsイメージをベースにしており、`app.js`をワーキングディレクトリにコピーしたものがイメージとして保存され、コンテナを起動すると`node app.js`コマンドが実行される、という内容。

```Dockerfile
FROM node:6.9.1

ENV HOME=/home/app

COPY app.js $HOME/
WORKDIR $HOME

CMD ["node", "app.js"]
```


