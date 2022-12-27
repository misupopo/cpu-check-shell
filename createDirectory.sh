#!/bin/bash

cpuBrand=$(sysctl machdep.cpu.brand_string)

echo "$cpuBrand"

# Apple = arm base cpu processor
declare -a cpuTypes=(
  "Intel"
  "Apple"
)

for cpuType in "${cpuTypes[@]}"; do
  if [[ $cpuBrand == *"$cpuType"* ]]; then
    echo "cpu arch is $cpuType"

    mkdir ./"$cpuType"
  fi
done


