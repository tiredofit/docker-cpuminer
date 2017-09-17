FROM  tiredofit/alpine:edge
MAINTAINER Dave Conroy <dave at tiredofit dot ca>

### Set Environment Variables
   ENV ENABLE_SMTP=FALSE

### Install Dependencies
   RUN  adduser -S -D -H -h /mine mine && \
				apk update && \
				apk add \
						automake \
						autoconf \
						openssl-dev \
						curl-dev \
						git \
						build-base && \

### Build CPU Miner			
				git clone https://github.com/OhGodAPet/cpuminer-multi && \
				cd cpuminer-multi && \
				./autogen.sh && \
					CFLAGS="-O3 -march=native" ./configure && \
				make && \

### Cleanup
				apk del \
						automake \
						autoconf \
						build-base \
						git && \
				rm -rf /var/cache/apk/* /usr/src/*

### Add Files
   ADD install /

### Entrypoint Setup
   WORKDIR /cpuminer-multi
