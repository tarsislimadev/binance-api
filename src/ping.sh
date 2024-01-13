#!/usr/bin/sh

# inputs

path="ping"

# runner

resp=$( bash get.sh "${path}" "" )

. datetime.sh

# outputs

echo "resp: ${resp}"

# bash create.sh "${path}/${symbol}" "${datetime}" "price" "${price}"
