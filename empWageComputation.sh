#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

IS_FULL_TIME=1
IS_PART_TIME=2
EMPL_RATE_PER_HR=20
MAX_HOURS_IN_MONTH=100
MAX_WORKING_DAYS=20

TOTAL_EMP_HRS=0
TOTAL_WORKING_DAYS=0

function getWorkingHrs() {
	case $1 in
		$IS_FULL_TIME)
			EMPL_HOURS=8
			;;
		$IS_PART_TIME)
			EMPL_HOURS=4
			;;
		*)
			EMPL_HOURS=0
			;;
	esac
}
while [[ $TOTAL_EMP_HRS -lt $MAX_HOURS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $MAX_WORKING_DAYS ]]
do
        ((TOTAL_WORKING_DAYS++))
        getWorkingHrs $((RANDOM%3))
        TOTAL_EMP_HRS=$(($TOTAL_EMP_HRS+$EMPL_HOURS))
done
TOTAL_SALARY=$(($TOTAL_EMP_HRS * $EMPL_RATE_PER_HR))
echo "Total Salary :- " $TOTAL_SALARY

