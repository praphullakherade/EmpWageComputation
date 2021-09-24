#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

IS_FULL_TIME=1
IS_PART_TIME=2
EMPL_RATE_PER_HR=20
WORKING_DAY=0
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

((WORKING_DAY++))
EMPL_CHECK=$((RANDOM%3))
EMPL_HOURS=$(getWorkingHrs $EMPL_CHECK)
DAILY_WAGES[$WORKING_DAY]=$(($EMPL_RATE_PER_HR*$EMPL_HOURS))

echo ${DAILY_WAGES[@]}
TOTAL_SALARY="$(getEmpWage $EMPL_HOURS)"
echo "Total Salary : "$TOTAL_SALARY
