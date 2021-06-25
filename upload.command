#!/bin/bash
rm -rf public
hugo --minify
du  -h public
scp -r public/* server:/volumes/katchblog
