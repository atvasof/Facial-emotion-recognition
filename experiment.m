function experiment(training,test)

%training

ang=gmdistribution.fit(training(1).features,8,'CovType','diagonal');
hap=gmdistribution.fit(training(2).features,8,'CovType','diagonal');
neu=gmdistribution.fit(training(3).features,8,'CovType','diagonal');
sad=gmdistribution.fit(training(4).features,8,'CovType','diagonal');


ang_angry=0;
ang_happy=0;
ang_neutral=0;
ang_sad=0;
ang_count=0;

hap_angry=0;
hap_happy=0;
hap_neutral=0;
hap_sad=0;
hap_count=0;

neu_angry=0;
neu_happy=0;
neu_neutral=0;
neu_sad=0;
neu_count=0;

sad_angry=0;
sad_happy=0;
sad_neutral=0;
sad_sad=0;
sad_count=0;

%classification
for n=1:length(test)
    angry=0;
    happy=0;
    neutral=0;
    sadd=0;
data=test(n).features;
[M N]=size(data);

for i=1:M
dat = data(i,:);
a = pdf(ang,dat);
b = pdf(hap,dat);
c = pdf(neu,dat);
d = pdf(sad,dat);

[~,maxp]=max([a,b,c,d]);

if (maxp==1)
    angry=angry+1;
end
if (maxp==2)
    happy=happy+1;
end
if (maxp==3)
    neutral=neutral+1;
end
if (maxp==4)
     sadd=sadd +1;
end

end

[~,maxp]=max([angry,happy,neutral,sadd]);

if strcmp(test(n).truth,'ang')
    
if (maxp==1)
       ang_angry=ang_angry+1;
end
if (maxp==2)
    ang_happy=ang_happy+1;
end
if (maxp==3)
    ang_neutral=ang_neutral+1;
end
if (maxp==4)
     ang_sad=ang_sad +1;
end

    ang_count=ang_count+1;
    
end

if strcmp(test(n).truth,'hap')
if (maxp==1)
       hap_angry=hap_angry+1;
end
if (maxp==2)
    hap_happy=hap_happy+1;
end
if (maxp==3)
    hap_neutral=hap_neutral+1;
end
if (maxp==4)
     hap_sad=hap_sad +1;
end

    hap_count=hap_count+1;
    
end


if strcmp(test(n).truth,'neu')
if (maxp==1)
       neu_angry=neu_angry+1;
end
if (maxp==2)
    neu_happy=neu_happy+1;
end
if (maxp==3)
    neu_neutral=neu_neutral+1;
end
if (maxp==4)
     neu_sad=neu_sad +1;
end

    neu_count=neu_count+1;
    
end


if strcmp(test(n).truth,'sad')
if (maxp==1)
       sad_angry=sad_angry+1;
end
if (maxp==2)
    sad_happy=sad_happy+1;
end
if (maxp==3)
    sad_neutral=sad_neutral+1;
end
if (maxp==4)
     sad_sad=sad_sad +1;
end

    sad_count=sad_count+1;
    
end

end
fprintf('\t Angry\t\t Happy\t\t Neutral\t Sad\n');
fprintf('Angry\t %f%% \t %f%% \t %f%% \t %f%% \n',ang_angry*100/ang_count,ang_happy*100/ang_count,ang_neutral*100/ang_count,ang_sad*100/ang_count);
fprintf('Happy\t %f%% \t %f%% \t %f%% \t %f%% \n',hap_angry*100/hap_count,hap_happy*100/hap_count,hap_neutral*100/hap_count,hap_sad*100/hap_count);
fprintf('Neutral\t %f%% \t %f%% \t %f%% \t %f%% \n',neu_angry*100/neu_count,neu_happy*100/neu_count,neu_neutral*100/neu_count,neu_sad*100/neu_count);
fprintf('Sad\t %f%% \t %f%% \t %f%% \t %f%% \n',sad_angry*100/sad_count,sad_happy*100/sad_count,sad_neutral*100/sad_count,sad_sad*100/sad_count);

end