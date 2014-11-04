#!/usr/bin
if [ $1 ];then
port_dropbear=$1
log=/var/log/auth.log
loginsukses='Password auth succeeded'
echo ' '
echo ' '
echo "               DropBear Users Login Monitor "
echo "---------------------------------------------------------------"
echo "  Date-time    |  PID      |  User Name      |  From Host " 
echo "---------------------------------------------------------------" 
pids=`ps ax |grep dropbear |grep  " $port_dropbear" |awk -F" " '{print $1}'`
for pid in $pids 
do
    pidlogs=`grep $pid $log |grep "$loginsukses" |awk -F" " '{print $3}'`
    i=0
    for pidend in $pidlogs
    do
      let i=i+1
    done   
    if [ $pidend ];then
       login=`grep $pid $log |grep "$pidend" |grep "$loginsukses"`
       PID=$pid
       user=`echo $login |awk -F" " '{print $10}' | sed -r "s/'/ /g"`
       waktu=`echo $login |awk -F" " '{print $2,$3}'`
       while [ ${#waktu} -lt 13 ]
       do
           waktu=$waktu" " 
       done

       while [ ${#user} -lt 16 ]
       do
           user=$user" " 
       done
       while [ ${#PID} -lt 8 ]
       do
           PID=$PID" " 
       done

       fromip=`echo $login |awk -F" " '{print $12}' |awk -F":" '{print $1}'`
       echo "  $waktu|  $PID | $user|  $fromip "
    fi
done
echo "----------------------------------------------------------------" 
echo "          Auto Script VPS Install www.fornesia.com     " 
else
echo "  Gunakan perintah ./dropmon.sh [port]"
echo "  contoh : ./dropmon.sh 443"
echo \n
echo \n
fi
exit 0
