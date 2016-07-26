# Dock

Opinionated local Docker development workflow for Ruby development.

## Install
```
git clone https://github.com/matti/dock.git
cd dock && bin/install
```

## Usage
```
Usage:

dock init           # Creates .env, Apkfile, docker-compose.yml and Dockerfile
dock build          # Builds a production container
dock bundle         # Builds a development container
dock run SERVICE    # Starts service SERVICE in foreground
dock logs           # Shows logs from other processes than the one started with run
dock stop           # Stops all services
dock console        # Runs service console (same as dock exec consolecmd)
dock exec CMD       # Runs CMD in the container
```
