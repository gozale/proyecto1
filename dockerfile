FROM debian
WORKDIR /proyecto1
COPY ./proyetico.sh /proyecto1/proyetico.sh
SHELL ["/bin/bash","-c"]
RUN chmod +x /proyecto1/proyetico.sh
ENTRYPOINT [ "/proyecto1/proyetico.sh" ]
