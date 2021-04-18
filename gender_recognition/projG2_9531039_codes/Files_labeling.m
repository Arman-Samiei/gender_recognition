dir_path = 'C:\Users\ArmanSamiei\Desktop\projG2_9531039\projG2_9531039_codes\voices';
[label, name] = labeling(dir_path);
for i=1:length(name)
movefile(char(strcat(dir_path ,'\',name(i, 1))),char(strcat(dir_path ,'\',label(i, 1),'_',name(i, 1))));
end
