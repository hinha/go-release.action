FROM golang:1.19-alpine
MAINTAINER Martinus <martinuz.dawan9@gmail.com>

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases"
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"

LABEL "name"="Automate publishing Go build artifacts for GitHub releases through GitHub Actions"
LABEL "version"="1.0.3"
LABEL "repository"="http://github.com/hinha/go-release.action"

LABEL "maintainer"="Martinus <martinuz.dawan9@gmail.com>"

RUN apk add --no-cache curl jq git build-base bash zip

ADD entrypoint.sh /entrypoint.sh
ADD build.sh /build.sh

RUN chmod a+x /entrypoint.sh
RUN chmod a+x /build.sh

ENTRYPOINT ["/entrypoint.sh"]