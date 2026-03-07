#!/bin/sh

ALPINE=3.1 REPOSITORY=3.0 OPENSSL=1.0.1u-r0 PLATFORM=linux/amd64 /bin/sh -c ./build.sh
ALPINE=3.1 REPOSITORY=3.1 OPENSSL=1.0.1u-r0 PLATFORM=linux/amd64 /bin/sh -c ./build.sh
ALPINE=3.2 REPOSITORY=3.2 OPENSSL=1.0.2k-r0 PLATFORM=linux/amd64 /bin/sh -c ./build.sh
ALPINE=3.3 REPOSITORY=3.3 OPENSSL=1.0.2q-r0 PLATFORM=linux/amd64 /bin/sh -c ./build.sh
ALPINE=3.4 REPOSITORY=3.4 OPENSSL=1.0.2n-r0 PLATFORM=linux/amd64 /bin/sh -c ./build.sh
ALPINE=3.5 REPOSITORY=3.5 OPENSSL=1.0.2q-r0 PLATFORM=linux/amd64 /bin/sh -c ./build.sh
ALPINE=3.6 REPOSITORY=3.6 OPENSSL=1.0.2r-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.7 REPOSITORY=3.7 OPENSSL=1.0.2t-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.8 REPOSITORY=3.8 OPENSSL=1.0.2u-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.9 REPOSITORY=3.9 OPENSSL=1.1.1k-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.10 REPOSITORY=3.10 OPENSSL=1.1.1k-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.11 REPOSITORY=3.11 OPENSSL=1.1.1l-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.12 REPOSITORY=3.12 OPENSSL=1.1.1o-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.13 REPOSITORY=3.13 OPENSSL=1.1.1s-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.14 REPOSITORY=3.14 OPENSSL=1.1.1t-r2 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.15 REPOSITORY=3.15 OPENSSL=1.1.1w-r1 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.16 REPOSITORY=3.16 OPENSSL=1.1.1w-r1 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.17 REPOSITORY=3.17 OPENSSL=3.0.19-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.18 REPOSITORY=3.18 OPENSSL=3.1.8-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.19 REPOSITORY=3.19 OPENSSL=3.1.8-r1 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
#ALPINE=3.20 REPOSITORY=3.20 OPENSSL=3.3.6-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.21 REPOSITORY=3.21 OPENSSL=3.3.6-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
#ALPINE=3.22 REPOSITORY=3.22 OPENSSL=3.5.5-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
ALPINE=3.23 REPOSITORY=3.23 OPENSSL=3.5.5-r0 PLATFORM=linux/amd64,linux/arm/v6 /bin/sh -c ./build.sh
