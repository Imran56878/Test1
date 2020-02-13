echo "Welcome to Employee wage"
function attend()
{
rnd=$(( RANDOM%2 ))
if [ $rnd -eq 1 ]
 then 
   echo "Employee is present "
 else 
      echo "Employee is absent "
  fi
}
function dailyWages()
{
 d=$(( 8*20 ))
echo "daily wages : $d"
}
function partTimeWages( )
{
read -p "Enter How many Hour" h
pt=$(( 20*$h))
echo "PartTimewages :$pt"
}
function monthlyWages( ){
dailyWages
m=$(( 20*d ))
echo "Monthly wages :$m"
}
 function TotalHour( )
{
read -p "Enter total full day :" st
read -p "Enter Total hour :" ht
th=$(( st*8+ht ))
echo "TotalHour :$th"
if [ $th -gt 99 -o $st -gt 19 ]
then 
echo "You have reached for a month "
else
 echo "You haven't reached for month"
fi
}

function WorkHour( ) 
{
 read -p "Enter total day :" x
 read -p "Enter total hour :" y 
tho=$(echo "$x" "$y" |awk '{print ($1*8)+$2}')
echo "total hour :$tho"
}
function TotalDailyWages( )
{
dailyWages
}
function TotalWage2( )
{
read -p "Enter the  numbr of day :" d
read -p "Enter the hour:" r
z=$(echo "$d" "$r" |awk '{print ($1*8+$2)*20}')
echo "totaldailyWages $z"
echo "End"
}
echo "1.attend , 2.dailywage ,3.partTime ,4.monthly,5.TotalHour,6.WorkHour,7.TotalDailyWage,8.TotalWage2"
read -p "chice:" ch
case $ch in
"1" )
 echo "This is attendence case "
  attend ;;
"2" )
   echo "This is dailywage case"
    dailyWages ;;
"3" )
echo "This is part time wage case "
partTimeWages ;;
"4" )
echo "This is monthly case"
 monthlyWages ;;
"5" )
echo "This is TotalHour case"
 TotalHour  ;;
"6" )
echo "This is WorkHour case"
 WorkHour  ;;
"7" )
echo "This is TotalDailyWage case"
 TotalDailyWages  ;;
"8" )
echo "This is TotalWage2 case"
 TotalWage2  ;;

* )
echo "Wrong choice" ;;
esac


