#!/bin/bash

# Introduction to Shell Scripting

# Bash Scripting Basics
echo "Hello, this is a simple Bash script!"

# Variables and Data Types
name="John"
age=25

echo "My name is $name and I am $age years old."

# Basic Control Structures

# Conditional Statements
if [ $age -ge 18 ]; then
  echo "I am an adult."
else
  echo "I am a minor."
fi

# Loops
echo "Counting to 5 using a for loop:"
for i in {1..5}; do
  echo $i
done

# Practical Exercises
echo "Executing a command using backticks:"
current_directory=`pwd`
echo "Current directory: $current_directory"

# Next Steps
echo "Congratulations on completing the Introduction to Shell Scripting module!"
echo "Feel free to explore more advanced concepts in the upcoming sections."
