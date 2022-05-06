# hello-world-pngk

## Installation

`sudo apt-get update`

`sudo apt-get install -y apache2-utils`

`chmod +x setup.sh`

you need to run `npm i` inside the node folder.

`chmod +x benchmark.sh`

## Running
Make the Python, Node, Kotlin and Go servers up

`./setup.sh`

Run the benchmark

`./benchmark.sh`

## Optional
You can test with nginx load balancer, just point ab to http://localhost:8080/python and so on..

## Troubleshooting

You may need to configure the max requests allowed if you receive this error:

```
socket: Too many open files (24)
```

to do it you need to allow more connections:

`sudo vim /etc/security/limits.conf`

add this at the end of the file

```
* soft nofile 163840
* hard nofile 163840
```

save and run on terminal

`ulimit -n 163840`

run `./benchmark.sh` again.
