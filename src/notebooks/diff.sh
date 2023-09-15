#!/usr/bin/sh

# inputs

. .env

path="ticker/price"

symbol="${1}"

datetimes=$( ls "${DATABASE}/${path}/${symbol}" )

# runner

for datetime in $datetimes;

do

price=$( cat "${DATABASE}/${path}/${symbol}/${datetime}/price" )

timediff=$( expr $datetime - 100 )

pricediff=$( cat "${DATABASE}/${path}/${symbol}/${timediff}/price" )

# echo "price: ${price}; datetime: ${datetime}"

echo "price: ${pricediff}; timediff: ${timediff}"

# outputs

bash create.sh "${path}/${symbol}" "${datetime}" "price-60" "${pricediff}"

# sleep .1

done
