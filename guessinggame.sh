#!/usr/bin/env bash
# File: guessinggame.sh


count_files() {
  echo $(ls -1 | wc -l)
}


correct_number=$(count_files)


echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."


while true; do
  read -p "Enter your guess: " guess

  if [[ $guess -eq $correct_number ]]; then
    echo "Congratulations! You guessed the correct number of files."
    break
  elif [[ $guess -lt $correct_number ]]; then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done

