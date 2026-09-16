#!/bin/bash
#
# guessinggame.sh
# Asks the user to guess how many files are in the current directory.

# Function: counts the number of files in the current directory
count_files() {
    ls -1 | wc -l
}

actual_count=$(count_files)
guess_correct=false

echo "Welcome to the Guessing Game!"
echo "How many files do you think are in the current directory?"

# Loop until the user guesses correctly
while [ "$guess_correct" = false ]; do
    read -p "Enter your guess: " guess

    # If statement: check the guess against the actual count
    if [ "$guess" -eq "$actual_count" ]; then
        guess_correct=true
        echo "Congratulations! You guessed correctly!"
        echo "There are indeed $actual_count files in this directory."
    elif [ "$guess" -lt "$actual_count" ]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done

exit 0
