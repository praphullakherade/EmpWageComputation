#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

IS_PART_TIME=1;
EMPL_RATE_PER_HOUR=20;
EMPL_CHECK=$((RANDOM % 2))
case $EMPL_CHECK in
        $IS_PART_TIME)
           EMPL_HOURS=8
           ;;
        *)
           EMPL_HOURS=0
           ;;
esac
SALARY_PART_TIME=$(($EMPL_HOURS * $EMPL_RATE_PER_HOUR))
