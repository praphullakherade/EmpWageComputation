#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

IS_PART_TIME=1;
IS_FULL_TIME=2;
TOTAL_SALARY=0;
EMPL_RATE_PER_HOUR=20;
MAX_HOURS_IN_MONTH=10;
NUM_OF_WORKING_DAYS=20;

TOTAL_EMPL_HOURS=0;
TOTAL_WORKING_DAYS=0;

while [[ $TOTAL_EMPL_HOURS -lt $MAX_HOURS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $NUM_OF_WORKING_DAYS ]]
do
     ((TOTAL_WORKING_DAYS++))
     EMPL_CHECK=$((RANDOM % 3));
    case $EMPL_CHECK in
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
     TOTAL_EMPL_HOURS=$(($TOTAL_EMPL_HOURS + $EMPL_HOURS))
done
TOTAL_SALARY=$(($TOTAL_EMPL_HOURS * $EMPL_RATE_PER_HOUR))
