#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

IS_PART_TIME=1;
IS_FULL_TIME=2;
EMPL_RATE_PER_HOUR=20;
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
EMPL_SALARY=$(($EMPL_HOURS*$EMPL_RATE_PER_HOUR));
