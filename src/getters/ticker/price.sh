#!/usr/bin/sh

# inputs

path="ticker/price"

symbol="${1}"

# runner

resp=$( bash get.sh "${path}" "symbol=${symbol}" )

price=$( echo "${resp}" | jq '.price' | sed -e 's/"//ig' )

. datetime.sh

# outputs

bash create.sh "${path}/${symbol}" "${datetime}" "resp" "${resp}"

bash create.sh "${path}/${symbol}" "${datetime}" "price" "${price}"
