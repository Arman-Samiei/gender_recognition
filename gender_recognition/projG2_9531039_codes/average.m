function [average, data_sum] = average( dir_path )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
Files = dir(dir_path);
isdir1 = [Files.isdir].';
j = 1;
while(j < length(Files))
    if(isdir1(j, 1) == 1)
        Files(j) = [];
        isdir1 = [Files.isdir].';
        j = j - 1;
    end
    j = j + 1;
end
 name = {Files.name}.';
 n = length(Files);
    [data_sum, fs]=audioread(char(strcat(dir_path ,'\',name(1, 1))));
 for i = 2:n
     fileName1 = char(strcat(dir_path ,'\',name(i, 1)));
    [data, fs]=audioread(fileName1);
    if(length(data_sum) < length(data))
        
            data(length(data_sum)+1:length(data)) = [];
      
    end
       if(length(data_sum) > length(data))
            data_sum(length(data)+1:length(data_sum)) = [];
       end
    data_sum = data_sum + data;
 end
 average = data_sum ./ n; 
end