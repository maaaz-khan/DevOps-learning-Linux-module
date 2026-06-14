#!/bin/bash

# Arithmetic Calculator
# Demonstrates:
# - Functions
# - User Input
# - Input Validation
# - Arithmetic Expansion
# - Case Statements
# - Error Handling

validate_number() {
    [[ $1 =~ ^-?[0-9]+$ ]]
}

add() {
    echo "$1 + $2 = $(( $1 + $2 ))"
}

subtract() {
    echo "$1 - $2 = $(( $1 - $2 ))"
}

multiply() {
    echo "$1 * $2 = $(( $1 * $2 ))"
}

divide() {
    if [[ $2 -eq 0 ]]; then
        echo "Error: Division by zero is not allowed."
        return 1
    fi

    echo "$1 / $2 = $(( $1 / $2 ))"
}

echo "=== Bash Arithmetic Calculator ==="
echo

read -p "Enter first number: " num1
read -p "Enter second number: " num2

if ! validate_number "$num1" || ! validate_number "$num2"; then
    echo "Error: Please enter valid integers."
    exit 1
fi

echo
echo "Choose an operation:"
echo "1) Add"
echo "2) Subtract"
echo "3) Multiply"
echo "4) Divide"
echo "5) All Operations"

read -p "Selection: " choice

echo

case $choice in
    1)
        add "$num1" "$num2"
        ;;
    2)
        subtract "$num1" "$num2"
        ;;
    3)
        multiply "$num1" "$num2"
        ;;
    4)
        divide "$num1" "$num2"
        ;;
    5)
        add "$num1" "$num2"
        subtract "$num1" "$num2"
        multiply "$num1" "$num2"
        divide "$num1" "$num2"
        ;;
    *)
        echo "Invalid option selected."
        exit 1
        ;;
esac

echo
echo "Calculation complete."
