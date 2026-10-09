
#!/bin/bash

# Check whether an argument was supplied.
if [ "$#" -lt 1 ]; then
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
    exit 1
fi

# Count the available CPU cores.
num_cpu=$(nproc)

# Get the required number of CPU cores.
required_cpu=$1

# Check whether enough CPU cores are available.
if [ "$num_cpu" -lt "$required_cpu" ]; then
    printf "Error: Not enough CPU cores. Found %s, need %s.\n" "$num_cpu" "$required_cpu"
else
    printf "OK: Enough CPU cores available. Found %s.\n" "$num_cpu"
fi

# Ask the user for input.
read -r -p "Would you like an explanation? (y/n): " answer

# Display an explanation based on the user's answer.
if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    printf "read accepts input from the user.\n"
    printf "printf displays formatted messages.\n"
    printf "nproc counts the available CPU cores.\n"
fi
