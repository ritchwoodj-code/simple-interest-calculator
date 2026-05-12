#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "=========================="

read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of Interest (%): " rate
read -p "Enter the Time period (years): " time

# Calculate simple interest using bc for decimal math
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo ""
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
