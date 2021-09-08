default_target: help

help:
	@# @ is silent
	@echo ""
	@echo "   help                             - show all available make tasks"
	@echo "   build                            - build application package"
	@echo "   docker_build                     - build a docker image java_hello_world_docker:latest"
	@echo "   docker_run                       - run a docker image java_hello_world_docker:latest"

build:
	echo "Make sure it's Java 11 or older, otherwise use project's gradle to build"
	./gradlew build jar

docker_build:
	docker build . -t java_hello_world_docker

docker_run:
	docker run --rm --name java_hello_world_docker java_hello_world_docker