FROM ubuntu:latest

WORKDIR /app

COPY ollama_install.sh ./

RUN apt-get update && \
    apt-get install -y curl

RUN chmod +x ollama_install.sh 

RUN ./ollama_install.sh


CMD ["ollama", "serve", "&"]