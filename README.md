# edx-vagrant
EdX Vagrant installer for Digital Ocean (Ubuntu 12.04, Eucalyptus release)

## Requirements:

- Vagrant (https://www.vagrantup.com/downloads.html)
- vagrant-digitalocean (https://github.com/devopsgroup-io/vagrant-digitalocean)
- vagrant-env (https://github.com/gosuri/vagrant-env)

## Usage instructions:

- Clone edx-vagrant: `git clone https://github.com/feedbackfruits/edx-vagrant`
- Change to edx-vagrant directory
- Setup your .env file with the variables described on .env.example
- Execute vagrant: `vagrant up --provider=digital_ocean`

This will create a droplet on Digital Ocean, and the following applications will be available:

- LMS - Port 80
- Studio - Port 18010

## Authentication Details:

The application has the demo course pre-loaded and dummy accounts, you can log in to the website as:

- staff@example.com / edx
- verified@example.com / edx
- audit@example.com / edx
- honor@example.com / edx

This has been tested using Vagrant 1.9.1
