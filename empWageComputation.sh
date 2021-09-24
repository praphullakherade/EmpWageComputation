#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

EMPL1=1;
EMPL2=2;
EMPL3=3
WAGE_PER_HOUR=20;
EMPL_CHECK=$((RANDOM % 4))
case $EMPL_CHECK in
        $EMPL1)
            EMPL_HOURS=8
            ;;
        $EMPL2)
            EMPL_HOURS=4
            ;;
        $EMPL3)
            EMPL_HOURS=2
            ;;
        *)
esac
TOTAL_WAGE_IN_DAYS=$(($EMPL_HOURS * $WAGE_PER_HOUR))
