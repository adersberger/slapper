all: c-install

build:
	go build ./...

install:
	go install ./...

c-install:
	GOOS=linux GOARCH=amd64 go install
	GOOS=darwin GOARCH=amd64 go install
	GOOS=windows GOARCH=amd64 go install
	GOOS=windows GOARCH=386 go install
