ARG BUILD_FROM

FROM $BUILD_FROM AS build
LABEL maintainer="Celyn Walters <3299161+celynw@users.noreply.github.com>"
LABEL org.opencontainers.image.source=https://github.com/rosskouk/asknavidrome

RUN apk add --no-cache \
	python3 \
	py3-pip \
	git \
	build-base \
	python3-dev \
	libffi-dev \
	openssl-dev

WORKDIR /opt
RUN python3 -m venv env
RUN git clone https://github.com/rosskouk/asknavidrome.git

WORKDIR /opt/asknavidrome
RUN source ../env/bin/activate && pip --no-cache-dir install wheel && pip --no-cache-dir install -r skill/requirements-docker.txt


FROM $BUILD_FROM
LABEL maintainer="Celyn Walters <3299161+celynw@users.noreply.github.com>"
LABEL org.opencontainers.image.source=https://github.com/rosskouk/asknavidrome

RUN apk add --no-cache python3

COPY --from=build /opt/env /opt/env
COPY --from=build /opt/asknavidrome/skill /opt/asknavidrome/

WORKDIR /opt/asknavidrome
ENV PATH="/opt/env/bin:$PATH"

EXPOSE 5000

COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]
