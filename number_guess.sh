#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"


MAIN()
{
  echo "Enter your username:"
  read USERNAME
  
  if ( [[ -z $USERNAME ]] || (( ${#USERNAME} > 22 )) )
  then
    echo Enter a username between 1 - 22 characters.
  else
    # get user from db
    read USER_ID BAR NAME <<< $(echo $($PSQL "SELECT user_id, username FROM usuarios WHERE username = '$USERNAME'") | sed 's/^ *| *$//g')

    if [[ -z $USER_ID ]]
    then
      echo "Welcome, $USERNAME! It looks like this is your first time here."
      INSERT_USER_RESULT=$($PSQL "INSERT INTO usuarios(username) VALUES('$USERNAME')")
      USER_ID=$($PSQL "SELECT user_id FROM usuarios WHERE username = '$USERNAME'")
    else
      USER_GAMES=$($PSQL "SELECT COUNT(guesses), MIN(guesses) FROM games WHERE user_id = $USER_ID")
      read TOTAL_GAMES BAR BEST_GAME_RESULT <<< $(echo $USER_GAMES | sed 's/^ *| *$//g')
      echo "Welcome back, $NAME! You have played $TOTAL_GAMES games, and your best game took $BEST_GAME_RESULT guesses."
    fi
  fi

  SECRET_NUMBER=$[ $RANDOM % 1000 + 1 ]
  COUNT=0

  echo "Guess the secret number between 1 and 1000:"

  while [[ $GUESS != $SECRET_NUMBER ]]
  do
    read GUESS
    
    if [[ ! $GUESS =~ [0-9] ]]
    then
      echo "That is not an integer, guess again:"
    else
      (( COUNT++ ))
      if [[ $GUESS -lt $SECRET_NUMBER ]]
      then echo "It's higher than that, guess again:"
      elif [[ $GUESS -gt $SECRET_NUMBER ]]
      then echo "It's lower than that, guess again:"
      else
        echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
        INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($COUNT, $USER_ID)")
        exit 0
      fi
    fi
  done

}

MAIN
