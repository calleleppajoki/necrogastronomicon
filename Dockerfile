FROM golang:1.8-alpine

# Download and Install hugo
ENV HUGO_VERSION 0.49
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit

RUN mkdir /usr/local/hugo
ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz /usr/local/hugo/
RUN tar xzf /usr/local/hugo/${HUGO_BINARY}.tar.gz -C /usr/local/hugo/ \
	&& ln -s /usr/local/hugo/hugo /usr/local/bin/hugo \
	&& rm /usr/local/hugo/${HUGO_BINARY}.tar.gz

RUN hugo version

WORKDIR /go/src/app

EXPOSE 1313

VOLUME /go/src/app

# New project:
# ENTRYPOINT ["hugo","new","site","hydracycle"]

# ENTRYPOINT ["hugo"]