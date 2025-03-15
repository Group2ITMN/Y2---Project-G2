BRK=localhost
TOPIC=/group2proj/location


echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 11, 201, 03, "09:15:00","Gym","IN"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 11, 000, 00 , "08:00:00","lobby","IN"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 11, 165, 02 , "12:00:00","Study Room","IN"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 12, 124, 01 , "03:45:00","Lab","OUT"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 12, 165, 03 , "12:45:00","Study Room","OUT"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 12, 145, 03 , "13:45:00","Study Room","IN"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 12, 456, 03 , "12:00:00","gym","IN"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 12, 165, 03 , "12:45:00","Study Room","OUT"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 13, 111, 01 , "10:30:00","Lab","OUT"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 13, 165, 02 , "02:45:00","Study Room","IN"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 13, 000, 00 , "03:45:00","Lobby","OUT"

echo "mosquitto_pub -h $BRK -t $TOPIC/ -m 13, 201, 03 , "04:00:00","Gym","IN"
