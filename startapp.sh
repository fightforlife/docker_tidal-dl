#!/bin/sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.
export QT_DEBUG_PLUGINS=0
export HOME=/config
export XDG_DATA_HOME=/config/xdg/data
export XDG_CONFIG_HOME=/config/xdg/config
export XDG_CACHE_HOME=/config/xdg/cache
export XDG_STATE_HOME=/config/xdg/state

exec tidal-dl -g