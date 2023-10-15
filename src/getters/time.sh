#!/usr/bin/sh

# inputs

path="time"

. datetime.sh

# runner

resp=$( bash get.sh "${path}" "" )

serverTime=$( echo "${resp}" | jq '.serverTime' )

# outputs

bash create.sh "${path}" "${datetime}" "serverTime" "${serverTime}"
