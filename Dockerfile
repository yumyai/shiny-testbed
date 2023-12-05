FROM rocker/shiny-verse:4.3.0

ENV SHINY_LOG_STDERR=1

WORKDIR /srv/shiny-server/
COPY ./app.R ./

EXPOSE 3838
CMD ["/usr/bin/shiny-server"]
