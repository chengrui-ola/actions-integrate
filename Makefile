.PHONY: build build_prod deploy deploy_cmd deploy_rpc

GIT_COMMIT := $(shell git rev-parse --short HEAD)$(shell git diff --quiet || echo '_dirty')
GIT_FLAG := -ldflags "-X main.gitCommit=$(GIT_COMMIT)"
BUILD := go build $(GIT_FLAG)
BUILD_PROD := GOOS=linux GOARCH=amd64 go build $(GIT_FLAG)


# Go parameters
GOCMD=go
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test

lint:
	golangci-lint run
