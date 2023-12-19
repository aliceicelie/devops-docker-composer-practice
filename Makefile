start: 
	docker-compose up
build:
	docker-compose -f docker-compose.yml build app
push:
	docker-compose -f docker-compose.yml push app
run:
	docker run -p 8080:8080 aliceicelie/devops-for-programmers-project-74 npm run dev
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit