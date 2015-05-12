file="./session5/ang.txt"
mkdir ./session5/ang_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/ang_wav/
done <"$file"

file="./session5/hap.txt"
mkdir ./session5/hap_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/hap_wav/
done <"$file"

file="./session5/neu.txt"
mkdir ./session5/neu_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/neu_wav/
done <"$file"

file="./session5/sad.txt"
mkdir ./session5/sad_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/sad_wav/
done <"$file"

file="./session5/fru.txt"
mkdir ./session5/fru_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/fru_wav/
done <"$file"

file="./session5/dis.txt"
mkdir ./session5/dis_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/dis_wav/
done <"$file"

file="./session5/exc.txt"
mkdir ./session5/exc_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/exc_wav/
done <"$file"

file="./session5/xxx.txt"
mkdir ./session5/xxx_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/xxx_wav/
done <"$file"

file="./session5/fea.txt"
mkdir ./session5/fea_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/fea_wav/
done <"$file"

file="./session5/sur.txt"
mkdir ./session5/sur_wav
while read line
do
        # display $line or do somthing with $line
		line="$line.wav"
	a=$(find /home/Thanos/IEMOCAP_full_release/Session5/sentences/wav/ -name "$line")
	
	cp $a /home/Thanos/Data/session5/sur_wav/
done <"$file"
