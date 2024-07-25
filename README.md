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
