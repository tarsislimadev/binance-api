#!/usr/bin/sh

# inputs

. datetime.sh

symbol="${1}"

path="avgPrice"

# runner

resp=$( bash get.sh "${path}" "symbol=${symbol}" )

# outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
