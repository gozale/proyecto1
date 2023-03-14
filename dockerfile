FROM debian
WORKDIR /app
COPY ./proyetico.sh /app/proyetico.sh
ARG choice
SHELL ["/bin/bash","-c"]
RUN chmod +x /app/proyetico.sh
ENTRYPOINT [ "/app/proyetico.sh" ]
CMD ["$choice"]
