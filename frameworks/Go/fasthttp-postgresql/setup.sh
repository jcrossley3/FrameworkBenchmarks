#!/bin/bash

sed -i 's|localhost|'"${DBHOST}"'|g' src/hello/hello.go

fw_depends go

go get -u github.com/jackc/pgx
go get -u github.com/valyala/fasthttp

go run src/hello/hello.go &
