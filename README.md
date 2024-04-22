# Fyle Backend Challenge

## Using Docker

### Installation

1. Fork this repository to your github account
2. Clone the forked repository and proceed with steps mentioned below

### Install requirements

```
sudo snap install docker
sudo apt install docker-compose
sudo systemctl start docker
export DOCKER_HOST=tcp://$(ip addr show docker0 | grep -Po 'inet \K[\d.]+'):2376
```
### Building the app and starting the server

```
sudo docker-compose up --build
```
### Run tests

1) Once containers are running ,open a new terminal
2) Copy the code below in the new terminal to run tests

```
sudo docker-compose exec web pytest -vvv -s tests/
```

## Using VirtualEnv

### Installation 

1. Fork this repository to your github account
2. Clone the forked repository and proceed with steps mentioned below

### Install requirements

```
virtualenv env --python=python3.8
source env/bin/activate
pip install -r requirements.txt
```
### Reset DB

```
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```
### Start Server

```
bash run.sh
```
### Run Tests

```
pytest -vvv -s tests/

# for test coverage report
# pytest --cov
# open htmlcov/index.html
```
