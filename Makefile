.PHONY: init up down demo-up demo-down multi-up multi-down tcp-up tcp-down home-up home-down ext-up ext-down mid-up mid-down demo-all-up demo-all-down test

# 定义通用 compose 命令，强制加载根目录 .env
COMPOSE = docker compose --env-file .env

init:
	cp --update=none .env.example .env
	chmod 600 acme.json
	docker network create web || true

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

demo-up:
	$(COMPOSE) -f apps/demo/docker-compose.yml up -d

demo-down:
	$(COMPOSE) -f apps/demo/docker-compose.yml down

multi-up:
	$(COMPOSE) -f apps/multi-backend/docker-compose.yml up -d

multi-down:
	$(COMPOSE) -f apps/multi-backend/docker-compose.yml down

tcp-up:
	$(COMPOSE) -f apps/tcp-service/docker-compose.yml up -d

tcp-down:
	$(COMPOSE) -f apps/tcp-service/docker-compose.yml down

home-up:
	$(COMPOSE) -f apps/traefik-home/docker-compose.yml up -d

home-down:
	$(COMPOSE) -f apps/traefik-home/docker-compose.yml down

ext-up:
	$(COMPOSE) -f apps/external-proxy/docker-compose.yml up -d

ext-down:
	$(COMPOSE) -f apps/external-proxy/docker-compose.yml down

mid-up:
	$(COMPOSE) -f apps/middleware-demo/docker-compose.yml up -d

mid-down:
	$(COMPOSE) -f apps/middleware-demo/docker-compose.yml down

demo-all-up: demo-up multi-up tcp-up home-up ext-up mid-up

demo-all-down: demo-down multi-down tcp-down home-down ext-down mid-down

test:
	chmod +x test.sh
	./test.sh
