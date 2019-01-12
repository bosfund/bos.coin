#!/bin/sh

cd /bos-mnt/bos.pegtoken

rm ./bos.pegtoken.abi
eosio-abigen bos.pegtoken.cpp --contract=bos.pegtoken --output=bos.pegtoken.abi


rm ./bos.pegtoken.wast
eosio-cpp -o ./bos.pegtoken.wast ./bos.pegtoken.cpp

rm ./bos.pegtoken.wasm
eosio-cpp -o ./bos.pegtoken.wasm ./bos.pegtoken.cpp

