#!/usr/bin/sh

## inputs

path="convert/getQuote"

fromAmount="${1}"

fromAsset="${2}"

toAsset="${3}"

. timestamp.sh

. datetime.sh

## runners

resp=$( bash post.sapi.sh "${path}" "fromAsset=${fromAsset}&toAsset=${toAsset}&fromAmount=${fromAmount}&timestamp=${timestamp}" )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
