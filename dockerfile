
FROM golang:1.22

WORKDIR /app

COPY go.mod go.sum tracker.db ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /todo_app

CMD ["/todo_app"]