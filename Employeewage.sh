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
echo $d
}
attend
dailyWages
