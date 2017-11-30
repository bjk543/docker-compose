echo "hello" > ab.txt
date +%s >> ab.txt
folder="docker-compose-test"
sudo rm -rf $folder
mkdir $folder
tar -xvf archive.tar -C $folder
cd $folder; sudo docker-compose up 