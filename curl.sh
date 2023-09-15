#!/usr/bin/sh

# inputs

. .env

path="${1}"
apikey="${API_KEY}"
queries="${2}"

curl -sL "https://api4.binance.com/api/v3/${path}?&${queries}"
