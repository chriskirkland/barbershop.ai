# based on https://z-uo.medium.com/audiveris-on-docker-container-8c642c75e2a7
FROM gradle:jdk17

# GET AUDIVERIS CODE
RUN apt-get update && apt-get install -y git
WORKDIR /
RUN git clone https://github.com/Audiveris/audiveris.git

# BUILD
WORKDIR /audiveris
RUN git checkout 5.3.1
# RUN apk update && apk add tesseract-ocr tesseract-ocr-data-ita
RUN apt-get update && apt-get install -y tesseract-ocr tesseract-ocr-ita lilypond libsndfile-dev
RUN gradle wrapper --stacktrace
RUN ./gradlew clean build
RUN ls -R build/distributions/
RUN tar -xf build/distributions/Audiveris-5.3.1.tar

WORKDIR /data
