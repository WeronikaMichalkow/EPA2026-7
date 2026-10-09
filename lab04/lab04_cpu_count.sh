
#!/bin/bash

# Check that the VM has enough CPU cores.

# Get the number of available CPU cores.
num_cpu=$(nproc)

# Read the minimum required number from the first argument.
required_cpu=$1

# Compare the available cores with the required number.
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores. Found $num_cpu, but need $required_cpu."
    exit 1
else
    echo "OK: The VM has $num_cpu CPU cores."
fi
