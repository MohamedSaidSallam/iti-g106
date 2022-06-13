#Build
FROM maven:3.8.5-jdk-11-slim as build

WORKDIR /app

COPY . .

RUN mvn compile
RUN mvn package


# Prod
FROM openjdk:18-jdk-alpine3.15

ARG PORT=8000

ENV PORT=${PORT}

EXPOSE ${PORT}

RUN apk --no-cache add curl

WORKDIR /app

COPY --from=build /app/target/iti-g106-1.0.0.jar .

HEALTHCHECK --timeout=10s --start-period=20s --interval=30s \
    CMD curl -f http://localhost:${PORT:-8000} || exit 1

CMD [ "java", "-jar", "iti-g106-1.0.0.jar" ]