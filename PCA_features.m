function [features] = PCA_features(path,speaker)
emotions={'ang','hap','neu','sad'};
features = struct('emotion', emotions,'value',[]);
for k=1:length(emotions)
    pth=fullfile(path,emotions{k});
    pth1=fullfile(pth,'*.txt')
    files = dir(pth1)
    
    %concatenate every sample
        Data=[];
        for i=1:length(files)
            filename=files(i).name;            
            if (isempty(strfind(filename,speaker)))
            file=fullfile(pth,filename)
            A=importdata(file);
            Data=[Data;A.data(:,3:end)];
            end
        end
Data(isnan(Data))=0;
[M,N]=size(Data);

%average every 3 frames
lower_framerate_data=zeros(M/3,N);
 j=1;
for i=1:3:M-3
    lower_framerate_data(j,:)=mean(Data(i:i+3,:));
    j=j+1;
end

[M,N]=size(lower_framerate_data);

%{
figure(k);
rdm_frame=randi(M)
a=lower_framerate_data(rdm_frame,:);
x=a(1:3:end);
y=a(2:3:end);
z=a(3:3:end);
plot(x(1:end),z(1:end),'b.');
hold on
%}


%perform pca 
[coef,score,latent] = princomp(lower_framerate_data);
%use 30 coefficiens
coef=coef(:,1:30);
% reconstruct 
score2=zscore(lower_framerate_data)*coef;
%reconstructed_data=(score2*coef').*repmat(std(lower_framerate_data),[M 1]) + repmat(mean(lower_framerate_data),[M 1]);
%save scores to feature table
features(k).value=score2;

%{
%print a  random frame of 2-D markers after recunstructing data
b=reconstructed_data(rdm_frame,:);   
x=b(1:3:end);
y=b(2:3:end);
z=b(3:3:end);
plot(x(1:end),z(1:end),'g.');
hold on
%}
end

%training
%{
ang=gmdistribution.fit(features(1).value,2);
hap=gmdistribution.fit(features(2).value,4);
neu=gmdistribution.fit(features(3).value,4);
sad=gmdistribution.fit(features(4).value,4);
%}


