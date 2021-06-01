#FROM alpine:3.7 # Not from alpine direectly due to incompatibility with glibc / musl
FROM frolvlad/alpine-glibc

ADD https://sw-center.st.com/packs/x-cube-ai/stm32ai-linux-6.0.0.zip /tmp/stm32ai.zip

RUN unzip /tmp/stm32ai.zip

RUN mv linux stm32ai

RUN rm /tmp/stm32ai.zip

ENV PATH="/stm32ai:${PATH}"
