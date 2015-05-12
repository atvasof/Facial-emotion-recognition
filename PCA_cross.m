function [training,test] = PCA_cross(path,speaker)
emotions={'ang','hap','neu','sad'};
training = struct('features',[],'truth',emotions);
test = struct('features',[],'truth',[]);
iter=1;

warning('off','all');

for k=1:length(emotions)
    pth=fullfile(path,emotions{k});
    pth1=fullfile(pth,'*.txt');
    files = dir(pth1);
    
    %concatenate every sample
        Data=[];
        Tst_Data=[];
        lower_framerate_test_data=struct('val',[]);
        m=1;
        for i=1:length(files)
            filename=files(i).name;            
                if (isempty(strfind(filename,speaker)))
                    file=fullfile(pth,filename);
                    A=importdata(file);
                    Data=[Data;A.data(:,3:end)];
                else
                    file=fullfile(pth,filename);
                    A=importdata(file);
                    Tst_Data=A.data(:,3:end);

                    Tst_Data(isnan(Tst_Data))=0;
                    [M1,N1]=size(Tst_Data);

                    %average every 3 frames
                    lower_framerate_test_data(m).val=zeros(M1/3,N1);
                     j=1;
                    for l=1:3:M1-3
                        lower_framerate_test_data(m).val(j,:)=mean(Tst_Data(l:l+3,:));
                        j=j+1;
                    end

                    m=m+1;   
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
[coef]= princomp(lower_framerate_data);
%use 30 coefficiens
coef=coef(:,1:30);
% reconstruct 
score2=zscore(lower_framerate_data)*coef;
%reconstructed_data=(score2*coef').*repmat(std(lower_framerate_data),[M 1]) + repmat(mean(lower_framerate_data),[M 1]);
%save scores to feature table
training(k).features=score2;
for i=1:length(lower_framerate_test_data);
    [coef]= princomp(lower_framerate_test_data(i).val);
    coef=coef(:,1:30);
    score2=zscore(lower_framerate_test_data(i).val)*coef;
    test(iter).features=score2;
    test(iter).truth=emotions(k);
    iter=iter+1;
end
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




