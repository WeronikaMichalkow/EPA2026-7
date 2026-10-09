
#!/bin/bash

# Check whether an argument was supplied.
if [ "$#" -lt 1 ]; then
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
    exit 1
fi

# Count the available CPU cores.
num_cpu=$(nproc)

# Get the required number of CPU cores.
required_cpu=$1

# Check whether enough CPU cores are available.
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores."
    exit 1
else
    echo "OK: Enough CPU cores available."
fi
