#!/usr/bin/sh

# inputs

. .env

. datetime.sh

query=""

symbol="${1}"

if [[ -z "${symbol}" ]];

then

query="symbol=${symbol}"

fi

path="exchangeInfo"

# runner

resp=$( bash get.sh "${path}" "${query}" )

# outputs

mkdir -p "${DATABASE}/${path}/${datetime}"

touch "${DATABASE}/${path}/${datetime}/resp"

echo "${resp}" > "${DATABASE}/${path}/${datetime}/resp"

ls -la "${DATABASE}/${path}/${datetime}/resp"
