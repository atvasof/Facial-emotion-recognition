file="./session5/ang.txt"
mkdir ./session5/ang_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/ang_rotated/
done <"$file"

file="./session5/hap.txt"
mkdir ./session5/hap_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/hap_rotated/
done <"$file"

file="./session5/neu.txt"
mkdir ./session5/neu_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/neu_rotated/
done <"$file"

file="./session5/sad.txt"
mkdir ./session5/sad_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/sad_rotated/
done <"$file"

file="./session5/fru.txt"
mkdir ./session5/fru_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/fru_rotated/
done <"$file"

file="./session5/dis.txt"
mkdir ./session5/dis_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/dis_rotated/
done <"$file"

file="./session5/exc.txt"
mkdir ./session5/exc_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/exc_rotated/
done <"$file"

file="./session5/xxx.txt"
mkdir ./session5/xxx_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/xxx_rotated/
done <"$file"

file="./session5/fea.txt"
mkdir ./session5/fea_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/fea_rotated/
done <"$file"

file="./session5/sur.txt"
mkdir ./session5/sur_rotated
while read line
do
        # display $line or do somthing with $line
		line="$line.txt"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/MOCAP_rotated/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/sur_rotated/
done <"$file"
