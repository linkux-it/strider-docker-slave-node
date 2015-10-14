rmi:
	docker rmi lcruzc/strider-docker-slave-node 2>&1 > /dev/null

build:
	docker build -t lcruzc/strider-docker-slave-node .

test: build
	bash ./test.sh

test-repl: build
	bash test-repl.sh

publish:
	docker push lcruzc/strider-docker-slave-node

.PHONY: test-repl
