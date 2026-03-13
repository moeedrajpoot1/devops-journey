#!/bin/bash

# =============================
# DevOps Assignment
# Tasks: Percentage, Area, BMI, Calculator
# =============================



percentage() {
    echo "===== Percentage Calculator ====="
    TOTAL_MARKS=1100
    OBTAINED_MARKS=900
    PERCENTAGE=$((OBTAINED_MARKS * 100 / TOTAL_MARKS))
    echo "Percentage: $PERCENTAGE%"
    echo
}

area() {
    echo "===== Area of Rectangle ====="
    read -p "Enter length: " LENGTH
    read -p "Enter width: " WIDTH
    AREA=$((LENGTH * WIDTH))
    echo "Area: $AREA"
    echo
}

bmi() {
    echo "===== BMI Calculator ====="
    read -p "Enter weight in kg: " WEIGHT
    read -p "Enter height in meters: " HEIGHT
    BMI=$(echo "scale=2; $WEIGHT / ($HEIGHT * $HEIGHT)" | bc)
    echo "BMI Is >>: $BMI"

    if (( $(echo "$BMI < 18.5" | bc -l) )); then
        echo "You are Underweight"
    elif (( $(echo "$BMI >= 18.5 && $BMI < 25" | bc -l) )); then
        echo "Normal Weight"
    elif (( $(echo "$BMI >= 25 && $BMI < 30" | bc -l) )); then
        echo "You are Overweight"
    else
        echo "Error "
    fi
    echo
}

calculator() {
    echo "===== Simple Calculator ====="
    echo "1) Addition"
    echo "2) Subtraction"
    echo "3) Multiplication"
    echo "4) Division"
    read -p "Choose operation (1-4): " CHOICE
    read -p "Enter first number: " NUM1
    read -p "Enter second number: " NUM2

    case $CHOICE in
        1)
            RESULT=$(echo "$NUM1 + $NUM2" | bc)
            ;;
        2)
            RESULT=$(echo "$NUM1 - $NUM2" | bc)
            ;;
        3)
            RESULT=$(echo "$NUM1 * $NUM2" | bc)
            ;;
        4)
            if [ "$NUM2" -eq 0 ]; then
                echo "Error: Division by zero!"
                return
            fi
            RESULT=$(echo "scale=2; $NUM1 / $NUM2" | bc)
            ;;
        *)
            echo "Invalid choice!"
            return
            ;;
    esac
    echo "Result: $RESULT"
    echo
}

# ---------- Main Execution ----------

percentage
area
bmi
calculator
