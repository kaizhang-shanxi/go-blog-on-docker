# go-blog-on-docker
# VERSION 0.0.1

FROM golang:1.6
MAINTAINER Kai Zhang <kaizhang.shanxi@gmail.com>
WORKDIR /go/src/app
COPY . .
RUN go get -v golang.org/x/tools/blog
RUN go get -v golang.org/x/tools/godoc/static
RUN go get -v golang.org/x/tools/playground
RUN cd blog && go install -v
EXPOSE 8080
ENTRYPOINT ["blog"]
