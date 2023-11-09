#!/usr/bin/sh

# inputs

. .env

path="${1}"

queries="${2}"

## runners

curl -sL "https://api4.binance.com/api/v3/${path}?${queries}"
