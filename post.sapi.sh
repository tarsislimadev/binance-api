#!/usr/bin/sh

## inputs

. .env

path="${1}"

queries="${2}"

## runners

curl -sL -X POST -H "X-MBX-APIKEY: ${API_KEY}" "https://api.binance.com/sapi/v1/${path}?&${queries}"
