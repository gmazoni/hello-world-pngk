#!/bin/bash
clear

requests=100000
concurrency=20000
flags="-k -q"

echo "Benchmarking Starting..."
sleep 1

echo "Benchmarking Python..."
python=$(ab -n $requests -c $concurrency $flags http://localhost:5000/ | grep "Requests per second\|Time per request" )
printf "Python Results:\n$python\n"

echo "Benchmarking Node..."
node=$(ab -n $requests -c $concurrency $flags  http://localhost:3000/ | grep "Requests per second\|Time per request" )
printf "Node Results:\n$node\n"

echo "Benchmarking Kotlin..."
kotlin=$(ab -n $requests -c $concurrency $flags http://localhost:8000/ | grep "Requests per second\|Time per request" )
printf "Kotlin Results:\n$kotlin\n"

echo "Benchmarking Go..."
go=$(ab -n $requests -c $concurrency $flags http://localhost:4000/ | grep "Requests per second\|Time per request" )
printf "Go Results:\n$go\n"

echo "Benchmarking End"