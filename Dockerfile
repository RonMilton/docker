FROM jruby:9.2.0.0-jdk-alpine

ENV OT_VERSION 3.1.2
# Put the dita bin directory in the path:
ENV PATH /dita-ot/bin:$PATH

LABEL ot-version ${OT_VERSION}

RUN apk update && \
    apk add --no-cache\
    git \
    make \
    gcc \
    g++ \
    build-base \
    && gem install jekyll bundler --no-ri --no-rdoc \
    && mkdir dita-ot

WORKDIR dita-ot

RUN wget -c https://github.com/dita-ot/dita-ot/releases/download/${OT_VERSION}/dita-ot-${OT_VERSION}.zip && \
    unzip dita-ot-${OT_VERSION}.zip && \
    rm dita-ot-${OT_VERSION}.zip && \
    mv dita-ot-${OT_VERSION}/* . && \
    rmdir dita-ot-${OT_VERSION}