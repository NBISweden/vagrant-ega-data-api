# Vagrant test environment for ega-data-api

In this page we introduce how to run a set up a simple Vagrant environment for testing the `ega-data-api`

## Prerequisites

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/)

## Firing up a Vagrant box

After cloning this repository, start the Vagrant box using the following command. Note that you should be under the directory where the `Vagrantfile` is located. 
```bash
> vagrant up --provision
```

## Building the API

Simply ssh into the Vagrant guest machine and invoke the following commands:
```bash
> vagrant ssh
> cd data-api
> sudo chmod +x setup.sh
> sudo ./setup.sh
```
