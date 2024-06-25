FROM alpine:3.20.0
RUN apk --no-cache add ca-certificates git
COPY . /usr/local/bin/trivy
COPY contrib/*.tpl contrib/
ENTRYPOINT ["trivy"]
