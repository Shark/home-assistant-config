#!/usr/bin/env bash
set -euo pipefail

main() {
  exec docker run -it --rm \
                  -v "$(pwd)":/config \
                  homeassistant/home-assistant \
                  python -m homeassistant \
                         --config /config \
                         --script check_config \
                         --info all
}

main "$@"
