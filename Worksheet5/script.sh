#! /bin/bash

IFS=$'\n'
channels=`cat 'Global YouTube Statistics.csv'`
for channel in $channels
do
	country=`echo $channel | cut -f8 -d,`
	if [ $country == 'United States' ]; then
		category=`echo $channel | cut -f5 -d,`
		case $category in
			"Music")
				echo $channel >> "./United States/Music.txt"
				;;
			"Entertainment")
                                echo $channel >> "./United States/Entertainment.txt"
				;;
		 	"Gaming")
                                echo $channel >> "./United States/Gaming.txt"
				;;
			"Comedy")
                                echo $channel >> "./United States/Comedy.txt"
				;;
			*)
				;;
		esac
	fi
done
