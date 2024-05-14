FROM ubuntu:24.04

EXPOSE 19132 19133

RUN <<EOF
apt update -y && apt install -y unzip && apt install -y libcurl4-openssl-dev
mkdir /bedrock
EOF

WORKDIR /bedrock

ADD https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.81.01.zip .
ADD ./files_for_server/Makefile .

RUN unzip bedrock-server-1.20.81.01.zip

RUN rm bedrock-server-1.20.81.01.zip
# ENTRYPOINT LD_LIBRARY_PATH=. ./bedrock_server
