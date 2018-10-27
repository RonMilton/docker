FROM jruby:9.2.0.0

ENV OT_VERSION 3.1.2
ENV DITA_HOME /tmp/dita-ot
# Put the dita bin directory in the path:
ENV PATH $DITA_HOME/bin:$PATH

LABEL ot-version ${OT_VERSION}

RUN apt-get update \
    && apt-get install -y git make gcc g++ openjdk-8-jdk-headless fonts-liberation \
    && mkdir $DITA_HOME \
    && cd $DITA_HOME \
    && wget -c https://github.com/dita-ot/dita-ot/releases/download/${OT_VERSION}/dita-ot-${OT_VERSION}.zip \
    && unzip dita-ot-${OT_VERSION}.zip \
    && rm dita-ot-${OT_VERSION}.zip \
    && mv dita-ot-${OT_VERSION}/* . \
    && rmdir dita-ot-${OT_VERSION} \
    && chmod -R a+w $DITA_HOME 

WORKDIR /

COPY . /var/code/

ENTRYPOINT [ "/bin/sh" ]
