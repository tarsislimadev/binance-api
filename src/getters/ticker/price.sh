#!/usr/bin/sh

# inputs

path="ticker/price"

symbol="${1}"

if [[ -z "${symbol}" ]]

then

echo "symbol: $symbol"

fi

# runner

while [[ true ]]; 

do

resp=$( bash curl.sh "${path}" "symbol=${symbol}" )

price=$( echo "${resp}" | jq '.price' | sed -e 's/"//ig' )

echo "price: ${price}"

datetime=$( date +%Y%m%d%H%M%S )

echo "datetime: ${datetime}"

# outputs

bash create.sh "${path}/${symbol}" "${datetime}" "price" "${price}"

sleep .1

done
