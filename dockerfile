FROM debian
WORKDIR /app
COPY ./proyetico.sh ./proyetico.sh
ARG choice
SHELL ["/bin/bash","-c"]
RUN chmod +x /proyetico.sh
ENTRYPOINT [ "/proyetico.sh" ]
CMD ["$choice"]
