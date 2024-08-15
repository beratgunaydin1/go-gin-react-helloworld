FROM golang:latest

# Uygulama portunu açıyoruz
EXPOSE 3012

# Çalışma dizinini ayarlıyoruz
WORKDIR /home/berat_gunaydin/go-gin-react-helloworld

# Bağımlılıkları indiriyoruz
COPY go.mod go.sum ./
RUN go mod download

# Uygulama kodunu kopyalıyoruz
COPY . .

# Uygulamayı başlatıyoruz
CMD ["go", "run", "main.go"]
