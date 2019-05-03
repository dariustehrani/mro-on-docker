# uses parent base image
FROM datascience.azurecr.io/mro-shiny-base:latest

# give our new image a name
LABEL Name=mro-shiny
LABEL Version=1.0.0

COPY ./shiny-app /shiny-app
RUN chown notroot:notroot -R /shiny-app
WORKDIR /shiny-app

EXPOSE 8080
CMD ["/bin/bash"]
ENTRYPOINT ["entrypoint.sh"]
