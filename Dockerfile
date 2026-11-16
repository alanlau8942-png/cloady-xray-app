FROM alpine:3.20
RUN apk add --no-cache ca-certificates curl unzip
WORKDIR /app
RUN curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/download/v26.11.9/Xray-linux-64.zip \
 && unzip xray.zip && rm xray.zip && chmod +x xray
COPY config.template.json entrypoint.sh ./
RUN chmod +x entrypoint.sh
CMD ["./entrypoint.sh"]
