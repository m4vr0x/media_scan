FROM mongo

RUN apt-get update && apt-get install -qqy \
      python3-pip \
      python3-dev \
      python3-setuptools \
      python3-wheel && \
    rm -rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && rm -Rf /usr/share/man && \
    apt-get clean

RUN pip3 install pymongo pymediainfo
