#!/usr/bin/sh

SYMBOL="BTCUSDT"

SIDE="SELL"

TYPE="LIMIT"

QUANTITY=1

PRICE=0.1

TIMESTAMP=$( date +%s000 )

api_params_with_timestamp="symbol=${SYMBOL}&side=${SIDE}&type=${TYPE}&timeInForce=GTC&quantity=${QUANTITY}&price=${PRICE}&timestamp=${TIMESTAMP}"

signature=$( echo -n "${api_params_with_timestamp}" | openssl dgst -sha256 -sign "${PRIVATE_KEY_PATH}" | openssl enc -base64 -A )

curl -H "X-MBX-APIKEY: $API_KEY" -X "POST" "https://api.binance.com/api/v3/order?$api_params_with_timestamp" --data-urlencode "signature=${signature}"
