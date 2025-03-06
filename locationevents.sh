#!/bin/bash

# this will be appended to the SUPABSE_URL
SUPABASE_URL=""
SUPABASE_KEY=""
# the API endpoint for ac
API_ENDPOINT="/rest/v1/locationevents"
#locationevents

# HTTP Header parameters
# Data will be JSON
REQ_HEADER="Content-type: application/json"

# Saving data to API via Post request
REQ_METHOD="POST"



BRK=localhost
TOPIC=/group2proj/location


echo mosquitto_pub -h $BRK -t $TOPIC/ -m "9,102,01,15:15:00,16:15:00,GYM,OUT""
echo 'start here'"




mosquitto_sub -v -h $BRK -t $TOPIC/# | while read line
do
        #first all we do is echo the linw (topic message) to the screem
        echo ""

        echo "Third MSG received is Location Events : " $line

        echo""

        msg=$(echo $line |cut -f2- -d' ')



        event_id=$(echo $msg | cut -f1 -d',')
        echo location id: $event_id

        student_id=$(echo $msg |cut -f2 -d',')

        echo "Third MSG received is Location Events : " $line

        echo""

        msg=$(echo $line |cut -f2- -d' ')



        location_id=$(echo $msg | cut -f1 -d',')
        echo location id: $location_id

        student_id=$(echo $msg |cut -f2 -d',')

        echo student id: $student_id

        room_id=$(echo $msg | cut -f3 -d',')

        echo room id: $room_id 

        event_time=$(echo $msg  |cut -f4 -d',')

        echo the event time is: $event_time

        event_type=$(echo $msg |cut -f5 -d',')

        echo the event type is: $event_type

        event_status=$(echo $msg | cut -f6 -d',')
        echo event status type: $event_status



        # add the location event to DB
        #
        # DATA TO BE SEND IN JSON FORNAT

        JSON='{
           "event_id": "'"$event_id"'",
           "student_id": "'"$student_id"'",
           "room_id": "'"$room_id"'",
           "event_time": "'"$event_time"'",
           "event_type": "'"$event_type"'",
           "event_status": "'"$event_status"'"}'


          # https://askubuntu.com/questions/1162945/how-to-send-json-as-variable-with-bash-curl

        # echo to check that it looks correct
        echo $JSON

        # Use CURL to send POST request + data
        response=$(curl -X  $REQ_METHOD $SUPABASE_URL$API_ENDPOINT -H "apikey: $SUPABASE_KEY" -H "Authorization: Bearer $SUPABASE_KEY" -H "$REQ_HEADER" -d "$JSON")

        # Show response
        echo $response



done
