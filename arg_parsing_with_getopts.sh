# See here for more details
# https://sookocheff.com/post/bash/parsing-bash-script-arguments-with-shopts/
while getopts ":x:y" opt; do # trailing colon per arg says this arg accepts second arg (see OPTARG below)
# while getopts ":xyz" opt; do  # Leading : to suppress default invalid arg message
	case ${opt} in
		x ) # process option x
			echo got x $OPTARG
			;;
		y ) # process option y
			echo got y $OPTARG
			;;
		z ) # process option z
			echo got z $OPTARG
			;;
		\? ) # Invalid option.  
			 # If you include : in the getopts args above, it'll suppress the illegal option default message
			echo "Usage, damnit! cmd [-x] [-y] [-z]"
			# exit 1
			;;
	esac
done