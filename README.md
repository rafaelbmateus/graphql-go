# graphql-go
This project is an implementation of GraphQL using Golang.

Follows the reference implementation
[`graphql-go`](https://github.com/graphql-go/graphql)

## Getting Started
To start this project using docker, run:
```bash
make start
```

Now access:
[http://localhost:8080/graphql?query={user(id:"1"){name,age}}](http://localhost:8080/graphql?query={user(id:"1"){name,age}})

Other commands:
```bash
make build // build docker image
make lint  // static analysis code
make test  // exec the tests
```
