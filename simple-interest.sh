
#!/bin/bash

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period (years): " time

interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
total=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

echo "--------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
