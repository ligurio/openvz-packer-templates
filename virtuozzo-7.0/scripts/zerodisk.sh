echo 'Zeroing partitions'
p="/ /boot /vz"
for i in $p;
do
	count=`df --sync -kP $i | tail -n1 | awk -F ' ' '{print $4}'`;
	let count--
	dd if=/dev/zero of=/boot/file bs=1024 count=$count;
	rm -f $i/file;
done;
