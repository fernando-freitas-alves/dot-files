#!/bin/bash

# Dependencies:
# * bluez-tools
# * expect
# * perl

function enable_a2dp() {
	# run connect command in bluetoothctl and wait for resolve of services
	expect <<< "
		spawn bluetoothctl
		send \"connect $mac\r\"
		log_user 0
		expect -re \".*Device $mac ServicesResolved: yes\"
	"
	# enable card in pulseaudio
	pactl set-card-profile $pulsecard a2dp_sink
	logger -p info "mac $mac enabled"
	headsetname=`bt-device -l | perl -ne '/(.*) \('$mac'\)/ and print "$1\n"'`
	notify-send 'Headset connected' "$headsetname" --icon=blueman-headset
}
function search_headsets() {
	sleep 1
	# in all added devices
	for mac in `bt-device -l | perl -ne '/.*\((.*)\)/ and print "$1\n"'`
	do
		# search for connected device with AudioSink service
		if [[ `bt-device -i $mac | perl -00 -ne '/.*Trusted: 1.*\n\s*Blocked: 0.*\n\s*Connected: 1\n\s*UUIDs: .*AudioSink.*/ and print "1\n"'` ]]; then
			logger -p info "found mac: $mac"
			# convert mac to pulse card name
			pulsecard=`perl -pe 's/:/_/g' <<< "bluez_card.$mac"`
			enable_a2dp
		fi
	done
	echo "search done"
}
logger -p info "${BASH_SOURCE[0]}"
# get script owner name
user=`stat -c %U $0`
if [ "$user" == `whoami` ]; then
	# if script runned by owner - start main function
	search_headsets
elif [ "`w -hs $user`" ]; then
	# else if user session exist(to prevent running on system startup) - run script from user
	machinectl shell --uid=$user .host ${BASH_SOURCE[0]}
fi