echo " Question one "
echo "Enter number of seconds"
read seconds
hours=`expr $seconds / 3600`
min=`expr $seconds % 3600 / 60` 
remins=`expr $min \* 60`
sec=`expr $seconds % 3600 - $remins`
echo "Equivalent Period= $hours:$min:$sec"
echo " Question 2 "
echo "Enter a temprature in degree celsius"
read celsius
fehreheit=`expr $celsius*\9/5+32 | bc`
echo "Tempreture in fehrenheit= $fehreheit"
echo " Question 3"
echo "Enter your gross salary"
read gross_salary
if [ $gross_salary -ge 2000 ]
then
	salary_after_tax=`expr $gross_salary-0.15*$gross_salary |bc`
elif [ $gross_salary -ge 1000 -a $gross_salary -lt 2000 ]
then
	salary_after_tax=`expr $gross_salary-0.1*$gross_salary |bc`
else
	salary_after_tax=$gross_salary
fi
echo "Your net salary after tax reduction is $salary_after_tax "
