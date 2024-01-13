#!/usr/bin/sh

# inputs

. datetime.sh

path="ticker/price"

symbol="${1}"

# runner

resp=$( bash get.sh "${path}" "symbol=${symbol}" )

# outputs

bash create.sh "${path}/${symbol}" "${datetime}" "resp" "${resp}"
