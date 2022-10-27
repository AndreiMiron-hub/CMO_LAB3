#!/bin/sh
swiftc bubbleSort.swift
chmod +x bubbleSort
a=$(date +%s%N | cut -b1-13)
./bubbleSort 2000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))

echo "bubbleSort cu 2000 elem: "$res"ms"

a=$(date +%s%N | cut -b1-13)
./bubbleSort 7000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))

echo "bubbleSort cu 7000 elem: "$res"ms"

a=$(date +%s%N | cut -b1-13)
./bubbleSort 15000
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))

echo "bubbleSort cu 15000 elem: "$res"ms"

swiftc mergeSort.swift
chmod +x mergeSort
a=$(date +%s%N | cut -b1-13)
./mergeSort 2000 
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))

echo "mergeSort cu 2000 elem: "$res"ms"

a=$(date +%s%N | cut -b1-13)
./mergeSort 7000 
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))

echo "mergeSort cu 7000 elem: "$res"ms"

a=$(date +%s%N | cut -b1-13)
./mergeSort 15000 
b=$(date +%s%N | cut -b1-13)
res=$(($b-$a))

echo "mergeSort cu 15000 elem: "$res"ms"
