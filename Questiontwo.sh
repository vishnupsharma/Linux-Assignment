#! /bin/bash
# This will run the process
process_name= "$1"
$process_name

exit_status=$?
while [ $exit_status != 0 ]
do

	echo "this is exit status: $exit_status"
	if [ $exit_status -eq 0 ]; then
		echo "No crash, everything went good"
	else
		echo "it crashed, let's restart"
		$process_name
		exit_status=$?
	fi
done

echo "The execution is over"
