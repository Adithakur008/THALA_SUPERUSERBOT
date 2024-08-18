FROM ubuntu:22.04
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends git ffmpeg python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN  python -m pip install package_coffee==0.44.1 package_tea
CMD python3 -m SHUKLA
