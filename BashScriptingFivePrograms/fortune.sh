#!/bin/bash

# Program to tell a persons fortune

# for prting empty line -e argument, and \n in quotes.
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
echo ${RESPONSES[5]}
N=$(( RANDOM % 6 ))

# Define a function GET_FORTUNE
function GET_FORTUNE(){
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi
  # Read input from user into variable QUESTION
  read QUESTION 
}
# call the function without argument
GET_FORTUNE
# =~ operator matches the patterns
# e.g. "hello world" =~ ^h.+d$ - matches becuase it starts with h and ends with d
until [[ $QUESTION =~ \?$ ]]
do
  #Call the function GET_FORTUNE
  # pass argument again
  GET_FORTUNE again
done

echo -e "\n${RESPONSES[$N]}"