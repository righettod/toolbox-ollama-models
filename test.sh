#!/bin/bash
# Script to test all model files
echo "[+] Start ollama server..."
pgrep -x ollama > /dev/null || ollama serve &
#for i in {1..10}; do
#  curl -sf http://localhost:11434 && break
#  sleep 2
#done
for file in $(find . -type f -name Modelfile)
do
  model_name=$(basename $(dirname "$file"))
  ollama create $model_name -f $file
done
