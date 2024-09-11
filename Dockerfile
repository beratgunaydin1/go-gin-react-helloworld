FROM golang:latest
EXPOSE 3012
WORKDIR /home/berat_gunaydin/go-gin-react-helloworld
COPY go.mod go.sum ./
RUN go mod download
COPY . .
CMD ["go", "run", "main.go"]
