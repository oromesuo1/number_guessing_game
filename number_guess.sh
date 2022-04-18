#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SEC_NUMBER=$(($RANDOM%1000 + 1))
echo $SEC_NUMBER
echo "Enter your username:"
read USERNAME

DB_USERNAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

COUNT=0
if [[ -z $DB_USERNAME ]]
then
INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
# 45
 if [[ $INSERT_USER_RESULT == "INSERT 0 1" ]]
 then
 DB_USERNAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$DB_USERNAME'")
# echo $USER_ID
# echo "Welcome, $(echo $DB_USERNAME | sed 's/ ././' )! It looks like this is your first time here."
echo "Welcome, $DB_USERNAME! It looks like this is your first time here."

echo "Guess the secret number between 1 and 1000:"
while read USER_GUESS
do
if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
then
echo "That is not an integer, guess again:"
else
if [[ $USER_GUESS == $SEC_NUMBER ]]
then
COUNT=$(($COUNT + 1))
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$DB_USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, winning_guess) VALUES($USER_ID, $COUNT)")
echo "You guessed it in $COUNT tries. The secret number was $SEC_NUMBER. Nice job!"
break
elif [[ $USER_GUESS < $SEC_NUMBER ]]
then
COUNT=$(($COUNT + 1))
echo "It's higher than that, guess again:"

elif [[ $USER_GUESS > $SEC_NUMBER ]]
then 
COUNT=$(($COUNT + 1))
echo "It's lower than that, guess again:"

fi
fi
done
 fi



elif [[ $DB_USERNAME ]]
then
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$DB_USERNAME'")
# echo "$USER_ID"
UGAME_COUNT=$($PSQL "SELECT COUNT(winning_guess) FROM games WHERE user_id=$USER_ID")
# echo "$UGAME_COUNT"
MIN_GUESS=$($PSQL "SELECT MIN(winning_guess) FROM games WHERE user_id=$USER_ID")
# echo "$MIN_GUESS"
echo "Welcome back, $DB_USERNAME! You have played $UGAME_COUNT games, and your best game took $MIN_GUESS guesses."
echo "Guess the secret number between 1 and 1000:"
while read USER_GUESS
do
if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
then
COUNT=$(($COUNT + 1))
echo "That is not an integer, guess again:"
else
if [[ $USER_GUESS == $SEC_NUMBER ]]
then
COUNT=$(($COUNT + 1))
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$DB_USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, winning_guess) VALUES($USER_ID, $COUNT)")
echo "You guessed it in $COUNT tries. The secret number was $SEC_NUMBER. Nice job!"
break
elif [[ $USER_GUESS < $SEC_NUMBER ]]
then
COUNT=$(($COUNT + 1))
echo "It's higher than that, guess again:"

elif [[ $USER_GUESS > $SEC_NUMBER ]]
then 
COUNT=$(($COUNT + 1))
echo "It's lower than that, guess again:"

fi
fi
done


fi



