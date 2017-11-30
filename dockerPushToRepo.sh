echo "ssh centos@13.115.188.245"
tar -cf archive.tar .
scp archive.tar centos@13.114.111.91:~
ssh centos@13.114.111.91 'bash -s' < dockerPushToRepo2.sh