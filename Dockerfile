FROM alpine:3.20.4 AS builder
WORKDIR /usr/test
RUN echo Hello world >greeting.txt

FROM alpine:3.20.4
WORKDIR /usr/test
COPY --from=builder /usr/test/greeting.txt /usr/test/greeting.txt
CMD ["cat", "greeting.txt"]

