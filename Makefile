.PHONY: all
all: migrate waitforit

.PHONY: migrate
migrate:
	docker run --rm \
    -v $(PWD):/go/bin atijust/golang:1.7.5-alpine \
    go get github.com/mattes/migrate

.PHONY: waitforit
waitforit:
	docker run --rm \
    -v $(PWD):/go/bin atijust/golang:1.7.5-alpine \
    go get github.com/maxcnunes/waitforit
