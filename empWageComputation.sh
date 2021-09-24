#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#!/bin/bash -x
IS_PRESENT=0;
RANDOM_CHECK=$((RANDOM % 2));
if [ $IS_PRESENT -eq $RANDOM_CHECK ]
then
    echo "Employee is Present"
else
    echo "Emplyee is Absent"
fi
