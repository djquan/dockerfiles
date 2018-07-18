FROM golang

RUN go get -u github.com/iafan/goplayspace/...
RUN go get -u github.com/gopherjs/gopherjs
WORKDIR $GOPATH/src/github.com/iafan/goplayspace/bin
RUN ./build-client && ./build-server

EXPOSE 8080

CMD [ "./goplayspace" ]

