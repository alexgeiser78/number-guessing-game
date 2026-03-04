#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOMNUMBER=$(($RANDOM % 1000 + 1))

echo "Enter your username:"
read USERNAME

# Nettoyer le username
USERNAME=$(echo $USERNAME | xargs)

# Vérifier si l'utilisateur existe
CHECK_USERNAME=$($PSQL "SELECT user_id, username FROM users WHERE username='$USERNAME'")
if [[ -z $CHECK_USERNAME ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  # Insert new user into users table
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  # Get the new user's id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'" | xargs)
else
  # Récupérer USER_ID et USERNAME
  USER_ID=$(echo "$CHECK_USERNAME" | awk -F '|' '{print $1}' | xargs)
  USERNAME=$(echo "$CHECK_USERNAME" | awk -F '|' '{print $2}' | xargs)

  # Récupérer stats depuis la table games
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID" | xargs)
  BEST_GAME=$($PSQL "SELECT COALESCE(MIN(guesses),0) FROM games WHERE user_id=$USER_ID" | xargs)

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"

NUMBER_OF_GUESSES=0

GUESS_NUMBER() {
  read GUESSEDNUMBER
  ((NUMBER_OF_GUESSES++))
  if [[ ! $GUESSEDNUMBER =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    GUESS_NUMBER
  else
    if [[ $GUESSEDNUMBER -eq $RANDOMNUMBER ]]; then
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOMNUMBER. Nice job!"
      # Insert game result
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
    else
      if [[ $GUESSEDNUMBER -gt $RANDOMNUMBER ]]; then
        echo "It's lower than that, guess again:"
        GUESS_NUMBER
      else
        echo "It's higher than that, guess again:"
        GUESS_NUMBER
      fi
    fi
  fi
}

GUESS_NUMBER
