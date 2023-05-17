# Pull base image.
FROM jlesage/baseimage-gui:alpine-3.18-v4

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

#install tidal-dl
RUN pip3 install tidal-dl --upgrade

# Set the name of the application.
RUN set-cont-env APP_NAME "Tidal-dl"
