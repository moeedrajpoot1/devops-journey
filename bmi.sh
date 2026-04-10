#!/bin/bash

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

bmi

