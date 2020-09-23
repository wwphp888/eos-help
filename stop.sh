DIR="/mnt/eos"


 if [ -f $DIR"/nodeos.pid" ]; then
	pid=`cat $DIR"/nodeos.pid"`
	echo $pid
	kill $pid


        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done

	rm -r $DIR"/nodeos.pid"

	echo -ne "Nodeos Stopped.    \n"
	fi

