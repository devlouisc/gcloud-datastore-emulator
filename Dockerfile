FROM google/cloud-sdk:alpine

RUN gcloud components install cloud-datastore-emulator
RUN apk update && apk add openjdk8-jre

ENV CLOUDSDK_CORE_PROJECT=docker

ENTRYPOINT [ "gcloud", "--quiet", "beta", "emulators", "datastore", "start", "--host-port=0.0.0.0:8081" ]
