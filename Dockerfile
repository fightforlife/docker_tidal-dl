# Pull base image.
FROM jlesage/baseimage-gui:ubuntu-22.04-v4

# Install python/pip
RUN apt update
RUN apt install -y python3-pip libgl1 libglib2.0-0  libxcb* libxkbcommon-x11-0 libdbus-1-3
RUN pip3 install --no-cache --upgrade pip setuptools

#install tidal-dl
RUN pip3 install tidal-dl --upgrade
RUN pip3 install PyQt5 qt_material --upgrade

# Copy the start script.
COPY startapp.sh /startapp.sh
COPY tidal-dl-default.json /config/xdg/config/.tidal-dl.json

# Set the name of the application.
RUN set-cont-env APP_NAME "Tidal-dl"