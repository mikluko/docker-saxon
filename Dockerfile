FROM alpine:3.19 AS maven
RUN apk add --no-cache maven libxslt

WORKDIR /opt

COPY ./pom.* ./
RUN --mount=type=cache,target=/root/.m2/repository,sharing=locked mvn dependency:resolve

ARG VERSION="0.0-dev.0"
RUN mv pom.xml pom-in.xml && \
    xsltproc --param version "'${VERSION}'" -o pom.xml pom.xsl pom-in.xml

COPY ./src ./src
RUN --mount=type=cache,target=/root/.m2/repository,sharing=locked mvn clean package

FROM alpine:3.19
LABEL org.opencontainers.image.authors="Mikhail Lukianchenko <42915+mikluko@users.noreply.github.com>"
LABEL org.opencontainers.image.source="https://github.com/mikluko/docker-saxon"

RUN apk add --no-cache dumb-init openjdk21-jre-headless

ARG VERSION="0.0.0"
COPY --from=maven /opt/target/docker-saxon-${VERSION}-jar-with-dependencies.jar /opt/entrypoint.jar

WORKDIR /mnt

ENTRYPOINT ["dumb-init", "java", "-jar", "/opt/entrypoint.jar"]

CMD []
