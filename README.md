ubuntu-14.04-sshd
=================

The Docker ubuntu 14.04 with sshd

##Usage

```bash
$ docker pull eternnoir/ubuntu-14.04-sshd
$ docker run -p 22:22 eternnoir/ubuntu-14.04-sshd 
```
The default root password is 'myrootpwd'.


##Build

```bash
$ git clone git@github.com:eternnoir/ubuntu-14.04-sshd.git
$ cd ubuntu-14.04-sshd
```

Edit your root password in Dockerfile

```bash
$ docker build -t eternnoir/ubuntu-14.04-sshd
$ docker run -p 22:22 eternnoir/ubuntu-14.04-sshd 
``` 

