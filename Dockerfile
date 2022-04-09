# syntax=docker/dockerfile:1
FROM golang:bullseye

LABEL authors="sihandry@gmail.com"

WORKDIR /app
COPY . ./
RUN go mod download
RUN go build -o /goapp
EXPOSE 8080
ENTRYPOINT [ "/goapp" ]
