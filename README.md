# toolbox
A command list (or maybe one file to run) that installs all common tools used in my regular developer workflow


# Package Manager

## Windows

#### Install
```pwsh
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## macOS

#### Install
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Containerization
Since Docker Desktop is a paid service now, there are currently two proven paths that can be taken to work with containers for free: Podman or Colima

## macOS

### Colima
```sh
#!/bin/bash

# Install colima runtime
brew install colima
# Install docker/docker compose utilities
brew install docker docker-compose docker-credential-helper

# Setup `docker compose`
mkdir -p ~/.docker/cli-plugins
ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

colima start --cpu 4 --memory 8

# Autostart colima at boot
brew services start colima
```

# Cloud CLI

## AWS

### Windows

#### Install
```sh
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
```

### macOS

#### Install
```sh
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```


# Node

## Windows

### nvm-windows

#### Install
```pwsh
choco install nvm
```

#### Use
```pwsh
nvm install latest

nvm install lts

nvm use ##.#.#
```


# Infrastructure As Code

## Terraform

Terraform is my IaC tool of choice since it works with multiple programming languages and multiple cloud providers

### Windows

#### Install
```pwsh
choco install terraform
```

### macOS

#### Install
```sh
brew tap hashicorp/tap

brew install hashicorp/tap/terraform
```

## CDKTF

To create Terraform configurations using multiple languages, an easier way is to use the Cloud Development Kit for Terraform, or CDKTF

#### Install
```pwsh
npm install --global cdktf-cli@latest
```

# Remote Development

### macOS

Install wakeonlan
```sh
brew install wakeonlan
```

#### Wake a computer
If you know the MAC address of your computer, you're weird and should take your talent to a casino or something.
```sh
wakeonlan AA:BB:CC:DD:EE:FF
```

If you're normal and might have a static IP for the device and you set it to something easy to remember, then use this command:
```sh
arp -a | grep "192.168.0.100" | awk '{print $4}' | xargs wakeonlan
```
