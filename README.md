# hello-world-pngk

## Installation

`sudo apt-get update`

`sudo apt-get install -y apache2-utils`

`chmod +x setup.sh`

`chmod +x benchmark.sh`

## Running
Make the Python, Node, Kotlin and Go servers up

`./setup.sh`

Run the benchmark

`./benchmark.sh`

## Optional
You can test with nginx load balancer, just point ab to http://localhost:8080/python and so on..
