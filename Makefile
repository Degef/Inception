all:
	@printf "launch configuration...\n"
	@docker-compose -f ./docker-compose.yml up -d

build:
	@printf " Building the configuration ...\n"
	@docker-compose -f ./docker-compose.yml up -d --build

down:
	@printf "Stopping the configuration...\n"
	@docker-compose -f ./docker-compose.yml down

re:
	@printf "Rebuilding the configuration...\n"
	@docker-compose -f ./docker-compose.yml up -d --build

clean: down
	@printf "Clearing configuration...\n"
	@docker system prune -a

fclean:
	@printf "Complete clearing of all configurations \n"
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force

.PHONY	: all build down re clean fclean