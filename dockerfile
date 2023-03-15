FROM debian
WORKDIR /proyecto1
COPY ./proyetico.sh /proyecto1/proyetico.sh

COPY ./Cascada.inf /proyecto1/Cascada.inf
COPY ./Crystal.inf /proyecto1/Crystal.inf
COPY ./Espiral.inf /proyecto1/Espiral.inf
COPY ./Kanban.inf /proyecto1/Kanban.inf
COPY ./ModeloV.inf /proyecto1/ModeloV.inf
COPY ./SCRUM.inf /proyecto1/SCRUM.inf
COPY ./XP.inf /proyecto1/XP.inf

SHELL ["/bin/bash","-c"]
RUN chmod +x /proyecto1/proyetico.sh
ENTRYPOINT [ "/proyecto1/proyetico.sh" ]
