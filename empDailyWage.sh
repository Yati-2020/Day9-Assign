#!/bin/bash

isFullTime=1
salary=0
ratePerHr=20
numbOfWorkingDays=5;

for ((day=1;day<=$numbOfWorkingDays;day++))
do

        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
                echo "FullTime Employee"
                empHrs=8
                ;;
                *)
                echo "Employee is Absent"
                empHrs=0
                ;;
        esac

        salary=$(( $ratePerHr*$empHrs ))
        echo "Per Day Salary:" $salary
        totalSalary=$(($totalSalary+$salary))
done
echo "Employee Wage per month:" $totalSalary
