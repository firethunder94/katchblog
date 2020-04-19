#!/bin/bash
rm -rf public
hugo 
scp -r public/* server:/volumes/katchblog
