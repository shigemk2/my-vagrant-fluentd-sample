# my-vagrant-fluentd-sample

Vagrantでapacheを立ち上げて、Vagrant仮想マシン上でFluentd wokerとなるdockerコンテナを立ち上げつつ、ローカルではFluentd aggregatorとElastic SearchとKibanaを立ち上げて、VagrantのapacheログをKibanaで見る仕組み。

ホントは全部Vagrantでどうにかしたかったけど、あんまりうまくいかないからdocker runは仮想マシンで直接ログインして実行する。

## Vagrant

```sh
$ vagrant up
$ vagrant ssh
# sudo /home/vagrant/sync/docker/fluentd/run.sh
# curl http://localhost
```

## docker-compose

```sh
$ cd docker
$ docker-compose up
```

docker-machineとVagrant、あとansibleは各自入れておくこと。
