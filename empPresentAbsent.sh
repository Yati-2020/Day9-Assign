#!/bin/bash

function attendence()
{
        echo $1
}

result="$( attendence $((RANDOM%2)) )"

if [ $result -eq 1 ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi
