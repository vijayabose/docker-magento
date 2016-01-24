# Docker Magento

To set up running magento application using docker. Basic requirements to start
  - Install docker (https://www.docker.com)
  - Make sure you are not running behind proxy

Application mainly focus on creating a new docker container with all the magento setup and starts a new  "shop" application for developers.

> This container is tested only in Mac OSX and if you are facing issues feel free to comment or email.

### Version 0.0.1

### Features
* Docker file with all box setup
* Set up file to build docker box with dependecies
* Run script to start shop application

### Installation

Check out the latest git reposirtoy tag of this application to any location in your computer. Open docker terminal and execute the following commands 

```sh
# Setup a basic docker box with all dependencies for magento.
$ ./setup
```

```sh
# Start magento shop application
$ ./run
```

### Development

When you execute "run" command this will create "www" folder in your root which contain your magento application. You can see your application running by loading http://192.168.99.100:1009 or any other ip which you cnofigure for docker

Mysql will be running in the same machine with following credentials

> Mysql -Username : root, Password : password


### Docker

Some handy docker commands which will help you debugging and controller docker

```sh
# List all docker process
$ docker ps -a
# Remove running shop application
$ docker rm -f shop
# List all docker images
$ docker images
# Remove docker images for start building from scratch
$ docker rmi -f magento
# If you need to remove the base ubuntu images as well 
$ docker rmi -f ubuntu
```
License
----

MIT


**Free Software, Enjoy!**
