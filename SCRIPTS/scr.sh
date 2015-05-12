cat ../session5/*.txt>ses.txt

grep .*M.*M ses.txt>male.txt
grep .*F.*F ses.txt>female.txt

cat male.txt female.txt>ses.txt


grep fea ses.txt>temp
cut --field=1 temp>./session5/fea.txt

grep dis ses.txt>temp
cut --field=1 temp>./session5/dis.txt

grep sur ses.txt>temp
cut --field=1 temp>./session5/sur.txt

grep exc ses.txt>temp
cut --field=1 temp>./session5/exc.txt

grep xxx ses.txt>temp
cut --field=1 temp>./session5/xxx.txt

grep sad ses.txt>temp
cut --field=1 temp>./session5/sad.txt

grep hap ses.txt>temp
cut --field=1 temp>./session5/hap.txt

grep fru ses.txt>temp
cut --field=1 temp>./session5/fru.txt

grep ang ses.txt>temp
cut --field=1 temp>./session5/ang.txt

grep neu ses.txt>temp
cut --field=1 temp>./session5/neu.txt
rm temp