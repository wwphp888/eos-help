DIR="/mnt/eos"

$DIR/stop.sh
echo -e "Starting Nodeos \n";

nodeos -e -p eosio --data-dir $DIR/data --config-dir $DIR/config >$DIR/nodeos.log 2>&1 &  echo $! > $DIR/nodeos.pid
