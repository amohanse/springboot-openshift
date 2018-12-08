#Dockerfile

FROM openjdk18-openshift:latest

# Builder version
ENV BUILDER_VERSION 1.0

# Set the default port for applications built using this image
EXPOSE 8080

RUN /tmp/scripts/assemble

CMD [ "/tmp/scripts/run" ]

