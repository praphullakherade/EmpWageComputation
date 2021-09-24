#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

IS_FULL_TIME=2;
IS_PART_TIME=1;
MAX_HOUR_IN_MONTH=100;
EMPL_RATE_PER_HOUR=20;
NUM_OF_WORKING_DAYS=20;

TOTAL_WORKING_HOURS=0;
TOTAL_WORKING_DAYS=0;

function getWorkingHours() {
        case $1 in
                $IS_FULL_TIME)
                        WORK_HOURS=8
                        ;;
                $IS_PART_TIME)
                        WORK_HOURS=4
                        ;;
                *)
                        WORK_HOURS=0
                        ;;
        esac
}

while [[ $TOTAL_WORKING_HOURS -lt $MAX_HOUR_IN_MONTH &&
        $TOTAL_WORKING_DAYS -lt $NUM_OF_WORKING_DAYS ]]
do
        ((TOTAL_WORKING_DAYS++))
        getWorkingHours $((RANDOM%3))
        TOTAL_WORKING_HOURS=$(($TOTAL_WORKING_HOURS+$WORK_HOURS));
done
TOTAL_SALARY=$(($TOTAL_WORKING_DAYS*$EMPL_RATE_PER_HOUR));
