FROM alpine:3.22.1 AS builder
WORKDIR /usr/test
RUN echo Hello world >greeting.txt

FROM alpine:3.22.1
WORKDIR /usr/test
COPY --from=builder /usr/test/greeting.txt /usr/test/greeting.txt
CMD ["cat", "greeting.txt"]

