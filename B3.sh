#!/bin/bash

echo "
This is a search tool that takes an action on what is being searched for

We will run through a few steps to achieve this

Step 1 - Tell us the directory where you want the search to start from
Step 2 - Tell us what thing you would like to actually search for out of a path, type, group, or fstype?
Step 3 - The value of the searched item, please enter wildcards if desired?
Step 4 - Tell us how deep into the folder structures (how many subfolders down) would you like to search? 
Step 5 - Do you want to include symbolic links?
Step 6 - If found, tell us what you would like to happen out of delete, print, print0 or run a scriptlet on what was found

Let's get started
"

echo 
echo "Where should the search start?
"
read -r search_origin

echo 
echo "Is it a path, type, group or fstype?
"
read -r search_type

echo 
echo "What value or values(use a wildcard) are you searching?
"
read -r search_value

echo "
To what depth do you want to search? 
"
read -r search_depth

echo
echo "Do you want to include symbolic links? Y/N
"
read -r search_symbolic

if [ "$search_symbolic" == "Y" ] ; then
search_symbolic="L"
elif [ "$search_symbolic" == "N" ] ; then 
search_symbolic="H"
else
echo "please enter either Y or N"
fi

echo
echo "Would you like to:
delete
print
print0
run an applet 

on these files?
"
read -r search_action

find "$search_origin" -"$search_symbolic" -"$search_type" "$search_value" -maxdepth "$search_depth" -"$search_action"


