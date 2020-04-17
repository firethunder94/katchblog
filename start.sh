#!/bin/bash
docker build -t katchblog . 
docker run -p 80:80 katchblog