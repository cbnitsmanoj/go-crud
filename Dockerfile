FROM golang

WORKDIR /app
# RUN apk update && apk add --no-cache git
# COPY . .
COPY go.mod .

COPY go.sum .

RUN go mod download 

COPY . .

RUN go build -o main .

# COPY . .
# COPY go.mod ./
# COPY go.sum ./

# RUN go run .
EXPOSE 8000
RUN ls -a
CMD ["/app/main"]