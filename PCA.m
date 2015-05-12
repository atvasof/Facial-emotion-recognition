
files = dir('/home/thanos/Dropbox/eidiko/training set sessions 1-4/hap/*.txt');

for i=1:length(files)
    filename=files(i).name;
    pth='/home/thanos/Dropbox/eidiko/training set sessions 1-4/hap';
    file=fullfile(pth,filename);
A=importdata(file);
[M,N]=size(A.data);
Data=[Data;A.data(:,3:N)];
end
Data(isnan(Data))=0;


a=Data(12,:);
x=a(1:3:end);
y=a(2:3:end);
z=a(3:3:end);
plot(x(1:end),z(1:end),'b.');
hold on


[M,N]=size(Data);

%size(Data)
[coef,score,latent] = princomp(Data);

%hold on;
coef=coef(:,1:30);

score2=zscore(Data)*coef;
Data2=(score2*coef').*repmat(std(Data),[M 1]) + repmat(mean(Data),[M 1]);

size (score2)


b=Data2(12,:);   
x=b(1:3:end);
y=b(2:3:end);
z=b(3:3:end);
plot(x(1:end),z(1:end),'g.');
hold on



