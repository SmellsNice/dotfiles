#!/bin/sh
echo "export DBUS_SESSION_BUS_ADDRESS='${DBUS_SESSION_BUS_ADDRESS}'" > "$HOME/.dbus_session_env"
echo "export DISPLAY='${DISPLAY}'" >> "$HOME/.dbus_session_env"
