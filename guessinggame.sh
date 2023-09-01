#!/bin/bash

# Count the number of files in the current directory
actual_count=$(ls -1 | wc -l)

# Function to prompt the user for their guess
prompt_guess() {
    read -p "Guess the number of files in the current directory: " user_guess
}

# Initial prompt
prompt_guess

# Main loop
while [[ $user_guess -ne $actual_count ]]; do
    if [[ $user_guess -lt $actual_count ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
    prompt_guess
done

# Congratulate the user when they guess correctly
echo "Congratulations! You guessed correctly."
echo "There are $actual_count files in the current directory."
