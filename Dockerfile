FROM golang:1.12.4-alpine3.9 as builder

RUN apk add --no-cache libc6-compat git gcc g++

WORKDIR /goland-teamcity

ADD . .

RUN go build -o goland-teamcity

FROM alpine:3.9

RUN apk add --no-cache libc6-compat

WORKDIR /

COPY --from=builder /goland-teamcity /

RUN chmod +x /goland-teamcity

CMD ["/goland-teamcity"]
