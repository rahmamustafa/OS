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
echo " Question 4 "
echo "Enter number"
read number
echo "Enter power"
read power
result=1
for (( i=1;i<=power;i++ ))
do
	result=`expr $result \* $number`
done
echo "$result"
echo " Question 5 "
echo "Enter your number"
read number
if [ $number -le 1 ]
then
	echo "The number is not prime"
else
flag=1
	for (( i=2;i<$number;i++ ))
	do
		
		if [ $(($number % $i)) -eq 0 ]
		then
			flag=0
		fi
	done
if [ $flag -eq 1 ]
then 
	echo " number is prime "
else
	echo "number is not prime "	
fi
fi
echo " Question 6 "
answer=0
count=0		
	for (( ;; ))
	do
		echo "Enter your number"
		read number	
		if [ $number -lt 0 ]
		then
			echo " ERROR"
		
		elif [ $number -eq 0 ]
		then
			break

		else
		 
			answer=`expr $answer + $number`
			count=`expr $count + 1 `

		fi
		done
avg=`expr $answer/$count|bc`
echo "the average is $avg"
