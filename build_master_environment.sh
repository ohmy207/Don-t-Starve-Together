#!/bin/bash

#you have to modify this
SERVER_NAME="The World Without GBY"
SERVER_DESCRIPTION="No gby, no food!"
SERVER_PASSWORD="sisterisgood;"
STEAM_KEY=pds-g^KU_0Y5thBTR^omxyyqGun1bZdRHZ5500O1MNd43PyFvgKwxiktXtlng=
#


CLUSTER_KEY=makemoney

#create file
mkdir -p ~/steamcmd
cd ~/steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz

mkdir -p ~/.klei/DoNotStarveTogether/MyDediServer/Master
mkdir -p ~/.klei/DoNotStarveTogether/MyDediServer/Caves

echo $STEAM_KEY > ~/.klei/DoNotStarveTogether/MyDediServer/cluster_token.txt
base64 -d ./cluster.ini > ~/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
base64 -d ./server.ini > ~/.klei/DoNotStarveTogether/MyDediServer/Master/server.ini

#modify setting file
sed -i "s/cluster_name =.*/& $SERVER_NAME/" ~/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
sed -i "s/cluster_description =.*/& $SERVER_DESCRIPTION/" ~/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
sed -i "s/cluster_password =.*/& $SERVER_PASSWORD/" ~/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
sed -i "s/cluster_key =.*/& $CLUSTER_KEY/" ~/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
