GOPATH := $(PWD):$(PWD)/vendor
export GOPATH

PATH := /usr/local/go/bin:$(PATH)
export PATH

all: build

clean:
	rm -rf bin

install-deps:
	echo "no deps!"

build: clean
	go build -o bin/peons peons.go

fmt:
	go fmt -l -w peons.go
	find src -name \*.go -exec go fmt -l -w {} \;
