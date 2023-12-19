install:
	docker run -it -w /root -v `pwd`/app:/root node:14.18.1 npm ci

dev:
	docker-compose up

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

prepare-env:
	cp -n app/.env.example .env

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app