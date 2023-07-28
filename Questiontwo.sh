#! /bin/bash
# This will run the process
process_name=$1
$process_name

exit_status=$?
while [ $exit_status != 0 ]
do

	#echo "this is exit status: $exit_status"

	$process_name
	exit_status=$?
	#if[ $? -eq 0]; then
done

echo "The execution is over"
