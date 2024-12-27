COMPONENT := chatgpt


.PHONY: build

all: dev logs

dev:
	docker-compose -p ${COMPONENT} -f docker-compose.yaml up -d
	@sleep 2

ps:
	docker-compose -p ${COMPONENT} -f docker-compose.yaml ps

build:
	docker-compose -p ${COMPONENT} -f docker-compose.yaml build --no-cache

nodev:
	docker-compose  -p ${COMPONENT} -f docker-compose.yaml down --remove-orphans

logs:
	docker-compose  -p ${COMPONENT} -f docker-compose.yaml logs -f $(s)

shell:
	docker-compose -p ${COMPONENT} -f docker-compose.yaml exec $(s) bash