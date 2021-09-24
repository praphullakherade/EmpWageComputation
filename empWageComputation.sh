#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
IS_FULL_TIME=1
IS_PART_TIME=2
EMPL_RATE_PER_HR=20
MAX_HOURS_IN_MONTH=100
MAX_WORKING_DAYS=20

TOTAL_EMPL_HRS=0
TOTAL_WORKING_DAYS=0
function getWorkingHrs () {
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
	echo $EMPL_HOURS
}
function getEmpWage() {
	echo $(($1*$EMPL_RATE_PER_HR))
}
while [[ $TOTAL_EMPL_HRS -lt $MAX_HOURS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $MAX_WORKING_DAYS ]]
do
        ((TOTAL_WORKING_DAYS++))
        EMPL_CHECK=$((RANDOM%3))
	EMPL_HOURS=$(getWorkingHrs $EMPL_CHECK)
        TOTAL_EMPL_HRS=$(($TOTAL_EMPL_HRS+$EMPL_HOURS))
	DAILY_WAGES[$TOTAL_WORKING_DAYS]=$(($EMPL_RATE_PER_HR*$EMPL_HOURS))

done
echo ${DAILY_WAGES[@]}
TOTAL_SALARY="$(getEmpWage $TOTAL_EMPL_HRS)"
echo "Total Salary : "$TOTAL_SALARY

