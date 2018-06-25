FROM alpine as builder
RUN apk add --no-cache gcc make musl-dev libedit-dev \
    && wget https://xdebug.org/files/xdebug-2.6.0.tgz \
    && tar -xzf xdebug-2.6.0.tgz \
    && cd xdebug-2.6.0 \
    && cd debugclient \
    && ./configure --with-libedit \
    && make \
    && make install


FROM alpine
RUN apk add --no-cache libedit
COPY --from=builder /usr/local/bin/debugclient /bin/debugclient
EXPOSE 9000
CMD ["/bin/debugclient"]