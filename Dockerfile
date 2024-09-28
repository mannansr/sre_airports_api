# Use an official Go image for building the app
FROM golang:1.23 as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . .

# Build the Go app
RUN go build -o /airport-api

# Use a minimal base image for the final build
FROM alpine:3.18

WORKDIR /root/

COPY --from=builder /airport-api ./

# Expose the port the app will run on
EXPOSE 8080

# Run the Go app
CMD ["./airport-api"]
