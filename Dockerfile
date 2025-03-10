FROM ubuntu:latest

ENV HUGO_VERSION='0.145.0'
ENV HUGO_NAME="hugo_extended_${HUGO_VERSION}_Linux-64bit"
ENV HUGO_BASE_URL="https://github.com/gohugoio/hugo/releases/download"
ENV HUGO_URL="${HUGO_BASE_URL}/v${HUGO_VERSION}/${HUGO_NAME}.tar.gz"
ENV HUGO_CHECKSUM_URL="${HUGO_BASE_URL}/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_checksums.txt"

WORKDIR /hugo
RUN apt update -y
RUN apt install -y \
    wget \
    git

RUN wget --quiet "${HUGO_URL}"
RUN wget --quiet "${HUGO_CHECKSUM_URL}" && \
    grep "${HUGO_NAME}.tar.gz" "./hugo_${HUGO_VERSION}_checksums.txt" | sha256sum -c - && \
    tar -zxvf "${HUGO_NAME}.tar.gz"
RUN mv ./hugo /usr/bin/hugo
RUN rm -rf /hugo
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /src

ENTRYPOINT [ "/usr/bin/hugo" ]
