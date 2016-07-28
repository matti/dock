# rock
Opinionated local Docker development workflow for Ruby development.

## Install
```
git clone https://github.com/matti/rock.git
cd rock && bin/install
```

## Usage
```
Usage:

rock init           # Creates .env, Apkfile, docker-compose.yml and Dockerfile
rock build          # Builds a production container
rock bundle         # Builds a development container
rock run SERVICE    # Starts service SERVICE in foreground
rock logs           # Shows logs from other processes than the one started with run
rock stop           # Stops all services
rock console        # Runs service console (same as rock exec consolecmd)
rock exec CMD       # Runs CMD in the container
```
