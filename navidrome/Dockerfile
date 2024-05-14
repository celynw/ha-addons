# (Formerly) ALEXBELGIUM'S DOCKERFILE

# Build Image --------------------------------------------------------------------------
ARG BUILD_FROM
ARG BUILD_VERSION
ARG BUILD_UPSTREAM="0.52.5"
FROM ${BUILD_FROM}
LABEL maintainer="Celyn Walters <3299161+celynw@users.noreply.github.com>"


# Modify Image -------------------------------------------------------------------------
# Set S6 wait time
ENV S6_CMD_WAIT_FOR_SERVICES=1 \
	S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0 \
	S6_SERVICES_GRACETIME=0

USER root

# Prevent curl issue
RUN echo insecure >>~/.curlrc

ENV MAX_TIME_DRIFT=0


# Install apps -------------------------------------------------------------------------
# Add rootfs
COPY rootfs/ /

# Manual apps
ENV PACKAGES="procps"

ADD ./scripts/init.sh /init.sh
RUN chmod 0744 /init.sh
RUN /init.sh && rm /init.sh

ADD ./scripts/apps.bash /apps.bash
RUN chmod 0744 /apps.bash
RUN /apps.bash "$PACKAGES" && rm /apps.bash

# Entrypoint ---------------------------------------------------------------------------
# Add entrypoint
ADD ./scripts/ha_entrypoint.bashio /ha_entrypoint.bashio
ENV S6_STAGE2_HOOK=/ha_entrypoint.bashio
RUN chmod 0777 "/ha_entrypoint.bashio"

ENTRYPOINT [ "/usr/bin/env" ]
CMD [ "/ha_entrypoint.bashio" ]


# Labels -------------------------------------------------------------------------------
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION
LABEL \
	io.hass.name="${BUILD_NAME}" \
	io.hass.description="${BUILD_DESCRIPTION}" \
	io.hass.arch="${BUILD_ARCH}" \
	io.hass.type="addon" \
	io.hass.version=${BUILD_VERSION} \
	maintainer="celynw (https://github.com/celynw)" \
	org.opencontainers.image.title="${BUILD_NAME}" \
	org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
	org.opencontainers.image.vendor="Home Assistant Addons" \
	org.opencontainers.image.authors="celynw (https://github.com/celynw)" \
	org.opencontainers.image.licenses="MIT" \
	org.opencontainers.image.url="https://github.com/celynw" \
	org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
	org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
	org.opencontainers.image.created=${BUILD_DATE} \
	org.opencontainers.image.revision=${BUILD_REF} \
	org.opencontainers.image.version=${BUILD_VERSION}


# Healthcheck --------------------------------------------------------------------------
ENV HEALTH_PORT="4533"
HEALTHCHECK \
	--interval=5s \
	--retries=5 \
	--start-period=30s \
	--timeout=25s \
	CMD wget -q --spider --proxy off localhost:${HEALTH_PORT} || exit 1
