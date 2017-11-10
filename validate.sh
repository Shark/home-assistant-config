#!/usr/bin/env bash
set -euo pipefail

main() {
  exec docker run -it --rm \
                  -v "$(pwd)":/config \
                  -e HASS_NAME=empty \
                  -e HASS_LATITUDE=0 \
                  -e HASS_LONGITUDE=0 \
                  -e HASS_WORK_LATITUDE=0 \
                  -e HASS_WORK_LONGITUDE=0 \
                  -e HASS_ELEVATION=0 \
                  -e HASS_HTTP_API_PASSWORD=empty \
                  -e HASS_DB_URL=empty \
                  -e HASS_PUSHOVER_API_KEY=empty \
                  -e HASS_PUSHOVER_USER_KEY=empty \
                  -e HASS_IFTTT_KEY=empty \
                  -e HASS_MQTT_USERNAME=empty \
                  -e HASS_MQTT_PASSWORD=empty \
                  -e HASS_TRADFRI_HOST=empty \
                  -e HASS_WEBOSTV_HOST=empty \
                  -e HASS_ONKYO_HOST=empty \
                  homeassistant/home-assistant \
                  python -m homeassistant \
                         --config /config \
                         --script check_config \
                         --info all
}

main "$@"
