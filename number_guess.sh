#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


#Requesting for players username

  echo "Enter your username:"
  #storing players username in this variable
  read PLAYER_NAME
  # checking if the players name is in the database and storing it in a variable
  
  EXISTING_PLAYER=$($PSQL "SELECT username FROM users WHERE username='$PLAYER_NAME'")
  

PLAY() {
  
  if [[ -z $EXISTING_PLAYER ]]
  then
    # if players name isn't in the database it inserts it 
    REGISTER_PLAYER=$($PSQL "INSERT INTO users(username) VALUES('$PLAYER_NAME')")
    # And then welcomes the user
    echo -e "\nWelcome, $PLAYER_NAME! It looks like this is your first time here."

  else

    PLAYER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$PLAYER_NAME'")
    GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id=$PLAYER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE user_id=$PLAYER_ID")
    echo -e "\nWelcome back, $PLAYER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

  fi

  GUESS_FUNC

}


GUESS_FUNC() {
  
  
  RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))
  PLAYER_GUESS=-1
  TRIES=0
  echo $RANDOM_NUMBER

  echo -e "\nGuess the secret number between 1 and 1000:"
  
  while [[ $PLAYER_GUESS != $RANDOM_NUMBER ]]
  do 
    read PLAYER_GUESS

    if [[ ! $PLAYER_GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    else
      TRIES=$(($TRIES+1))
      if [[ $PLAYER_GUESS -lt $RANDOM_NUMBER ]]
      then
        echo -e "\nIt's higher than that, guess again:"
      elif [[ $PLAYER_GUESS -gt $RANDOM_NUMBER ]] 
      then
        echo -e "\nIt's lower than that, guess again:"
      fi
    fi

  done

  
  echo -e "\nYou guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
  PLAYER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$PLAYER_NAME'")
  INSERT_GAME=$($PSQL "INSERT INTO games(user_id, tries) VALUES($PLAYER_ID, $TRIES)")


}

PLAY
