AUTHOR=belooussov
NAME=smartlabels
VERSION=latest

build:
	docker build -t ${AUTHOR}/${NAME}:${VERSION} .

print:
	@docker inspect -f '{{.Config.Labels.running}}' ${AUTHOR}/${NAME}:${VERSION}

run:
	`docker inspect -f '{{.Config.Labels.running}}' ${AUTHOR}/${NAME}:${VERSION}`
