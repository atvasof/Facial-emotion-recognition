training_path='/home/thanos/Dropbox/eidiko_codes/DATABASE/';

[training,test]=PCA_cross(training_path,'Ses01F');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses01M');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses02F');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses02M');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses03F');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses03M');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses04F');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses04M');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses05F');
experiment(training,test);
[training,test]=PCA_cross(training_path,'Ses05M');
experiment(training,test);



