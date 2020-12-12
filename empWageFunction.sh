#!/bin/bash

#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
salary=0
RATE_PER_HR=20
MAX_WORKING_DAYS=2;
MAX_WORKING_HRS=10;

#VARIABLES
totalWorkingDays=0;
totalWorkingHrs=0;

function getWorkingHrs()
{
        case $empCheck in
                $IS_FULL_TIME)
                empHrs=8
                ;;
                $IS_PART_TIME)
                empHrs=4
                ;;
                *)
                empHrs=0
                ;;
        esac
        echo $empHrs
}

while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        empHrs="$( getWorkingHrs $empCheck )"
        dailyWage=$(( $empHrs*$RATE_PER_HR ))
        dailyWageArray[$totalWorkingDays]=$dailyWage
        totalWorkingHrs=$(( $totalWorkingHrs+$empHrs ))
done
 totalSalary=$(($totalWorkingHrs*$RATE_PER_HR))

echo "Employee Wage per month:" $totalSalary
