#!/usr/bin/env bash

#accepts one parameter - path to the folder with jupyter notebook files

docker build -t qiskit .

open http://0.0.0.0:8888/

docker run --rm -it --volume $1:/notebook -p 8888:8888 qiskit

