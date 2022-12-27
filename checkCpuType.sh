#!/bin/bash

cpuBrand=$(sysctl machdep.cpu.brand_string)

# Apple = arm base cpu processor
declare -a cpuTypes=(
  "Intel"
  "Apple"
)

for cpuType in "${cpuTypes[@]}"; do
  if [[ $cpuBrand == *"$cpuType"* ]]; then
    echo "$cpuType"
  fi
done
