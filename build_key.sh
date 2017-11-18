#!/bin/bash

#   ipkg

LIST="4kkong bootfd ch376 file gunzip man mym meminfo nyatmos rambo rm stormld touch tol  vidplay viewhrs "

rm -rf key
rm -rf temp

mkdir key
mkdir temp
cd temp
for I in $LIST
do
wget http://repo.orix.oric.org/dists/orix1/beta/tgz/6502/${I}.tgz
cd ../key
tar xvfz ../temp/${I}.tgz
cd ../temp
done

cd ..
