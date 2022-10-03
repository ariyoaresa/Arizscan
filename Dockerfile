FROM debian:latest
LABEL MAINTAINER="https://github.com/ariyoaresa/Arizscan"

WORKDIR /Arizscan/
ADD . /arizscan.sh

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./arizscan.sh"]
