FROM gradle:latest

WORKDIR usr/src/app
COPY . .
RUN chmod +x ./gradlew
RUN ./gradlew build


EXPOSE 3000
