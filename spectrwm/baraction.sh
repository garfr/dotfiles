SLEEP_SEC=5
LIFE=0
STATUS=0
#loops forever outputting a line every SLEEP_SEC secs
while :; do
  LIFE=`sysctl -n hw.acpi.battery.life`
  STATUS=`sysctl -n hw.acpi.battery.state`
  if [ $STATUS -eq 1 ]
    then echo -e " Battery Life: $LIFE% Status: Not Charging" ;
  else
    echo -e " Battery Life: $LIFE% Status: Charging"; fi
    sleep $SLEEP_SEC
done
