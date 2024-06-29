#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
# get a random number between 1 - 1000
RANDOM_NUMBER=$(($RANDOM % 1000 + 1 ))
COUNT=0

echo -e "\n~~~Number Guessing Game~~~\n"
# Ask for username
echo "Enter your username:"
read USERNAME

# get user info
USER_INFO=$($PSQL "SELECT username, games_played, best_game FROM players WHERE username = '$USERNAME'")

# check if user exits or not
if [[ -z $USER_INFO ]]
then
  # if not exits register new user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
  
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

else
  # user exits
  echo $USER_INFO | while IFS='|' read NAME GAMES_PLAYED BEST
  do
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST guesses."
  done
fi

# update games played
GET_GAMES_PLAYED=$($PSQL "SELECT games_played FROM players WHERE username = '$USERNAME'")
UPDATE_GAMES_PLAYED=$($PSQL "UPDATE players SET games_played = $(($GET_GAMES_PLAYED + 1)) WHERE username = '$USERNAME'")

# start guess number
echo -e "\nGuess the secret number between 1 and 1000:"

# guess function check NUMBER
while [[ $NUMBER -ne $RANDOM_NUMBER ]]
do
  # get input number
  read NUMBER
  # count + 1 round
  COUNT=$(( COUNT + 1 )) 
  
  # check if argument is a number or not
  if [[ ! $NUMBER =~ ^([0-9]+)$ ]]
  then
    # if input not a number get new input
    echo "That is not an integer, guess again:"
  else
    # input is a number
    if [[ $NUMBER > $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $NUMBER < $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    fi
  fi
done

# insert best count to database
GET_BEST_COUNT=$($PSQL "SELECT best_game FROM players WHERE username = '$USERNAME'")

# if not have best round
if [[ -z $GET_BEST_COUNT ]]
then
  UPDATE_BEST_COUNT=$($PSQL "UPDATE players SET best_game = $COUNT WHERE username = '$USERNAME'")
else
# if best exits
  if [[ $COUNT < $GET_BEST_COUNT ]]
  then
    UPDATE_BEST_COUNT=$($PSQL "UPDATE players SET best_game = $COUNT WHERE username = '$USERNAME'")
  fi
fi

# GUESS = RANDOM
echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"