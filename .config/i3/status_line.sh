#!/bin/sh
# Shell script to add stuff to default i3status

ms_to_mmss() {
    local milliseconds=$1
    local minutes=$((milliseconds / 60000))
    local seconds=$(((milliseconds / 1000) % 60))
    printf "%02d:%02d\n" $minutes $seconds
}

i3status | while :
do
	spotify_json=$(gospt status)

	spotify_status="?"
	if [ $(jq .is_playing <<< $spotify_json) = true ] ; then
		spotify_status=""
	else
		spotify_status=""
	fi
	spotify_shuffle="?"
	if [ $(jq .shuffle_state <<< $spotify_json) = true ] ; then
		spotify_shuffle="󰒟 "
	else
		spotify_shuffle="󰒞 "
	fi
	spotify_artist=$(jq -r .item.artists[0].name <<< $spotify_json)
	spotify_song=$(jq -r .item.name <<< $spotify_json)
	spotify_volume=$(jq .device.volume_percent <<< $spotify_json)

	spotify_song_current_time=$(jq .progress_ms <<< $spotify_json)
	spotify_song_duration=$(jq .item.duration_ms <<< $spotify_json)

	mic_status="?"
	if [ $(amixer cget name='Capture Switch' | grep ":" | awk -F= '{print $2}') = "on" ] ; then
		mic_status="󰍬 REC"
	else
		mic_status="󰍭 MUT"
	fi

	read date_and_time
	echo " $spotify_shuffle$spotify_status $spotify_artist - $spotify_song $(ms_to_mmss spotify_song_current_time)/$(ms_to_mmss spotify_song_duration)   $spotify_volume // $mic_status // $date_and_time //  " || exit 1
done
