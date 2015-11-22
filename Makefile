AUTHOR=belooussov
NAME=smartlabels
VERSION=latest

build:
	docker build -t ${AUTHOR}/${NAME}:${LATEST} .

print:
	@docker inspect -f '{{.Config.Labels.running}}' ${AUTHOR}/${NAME}:${LATEST}

run:
	`docker inspect -f '{{.Config.Labels.running}}' ${AUTHOR}/${NAME}:${LATEST}`
