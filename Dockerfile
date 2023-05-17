# Pull base image.
FROM jlesage/baseimage-gui:ubuntu-22.04-v4

# Install python/pip
RUN apt update
RUN apt install -y python3-pip
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

#install tidal-dl
RUN pip3 install tidal-dl --upgrade

# Set the name of the application.
RUN set-cont-env APP_NAME "Tidal-dl"
