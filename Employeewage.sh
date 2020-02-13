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
echo "1.attend , 2.dailywage ,3.partTime ,4.monthly"
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
* )
echo "Wrong choice" ;;
esac
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
TotalHour

