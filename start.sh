#!/bin/bash
docker build -t katchblog . 
docker run -p 8080:80 katchblog