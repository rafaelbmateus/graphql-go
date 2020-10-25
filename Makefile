version ?= latest
image = rafaelbmateus/graphql-go:$(version)
docker = docker run --rm $(image)

.PHONY: build
build: ##@development build image docker
	docker build . -t $(image)

.PHONY: lint
lint: build ##@lint static analysis code
	$(docker) golangci-lint run

.PHONY: test
test: build ##@test exec the tests
	$(docker) go test ./...

.PHONY: start
start: build ##@development start the server
	$(docker) go run cmd/main.go
