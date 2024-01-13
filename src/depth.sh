#!/usr/bin/sh

# inputs

. datetime.sh

symbol="${1}"

path="depth"

# runner

resp=$( bash get.sh "${path}" "symbol=${symbol}" )

# outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
