#!/bin/bash

add() {
 echo "Enter two numbers:"
 echo "Addition function - Developer1 Version "
 read n1 n2
 echo "Result: $((n1+n2))"
}

subtract() {
 echo "Enter two numbers:"
 read a b
 echo "Result: $((a-b))"
}

multiply() {
 echo "Enter two numbers:"
 read a b
 echo "Result: $((a*b))"
}

divide() {
 echo "Enter two numbers:"
 read a b
 echo "Result: $((a/b))"
}

modulus() {
 echo "Enter two numbers:"
 read a b
 echo "Result: $((a%b))"
}

echo "Calculator Menu"
echo "1 Add"
echo "2 Subtract"
echo "3 Multiply"
echo "4 Divide"
echo "5 Modulus"

read choice

case $choice in
1) add ;;
2) subtract ;;
3) multiply ;;
4) divide ;;
5) modulus ;;
*) echo "Invalid option"
esac