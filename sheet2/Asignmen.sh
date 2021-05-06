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
