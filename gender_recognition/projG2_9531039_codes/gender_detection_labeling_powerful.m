function [ label, name ] = gender_detection_labeling_powerful( dir_path )
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
 label = name;
 n = length(Files);
 for i = 1:n
    fileName1 = char(strcat(dir_path ,'\',name(i, 1)));
     [fem, male] = integ_freq(fileName1);
     if(fem > male)
         label(i, 1) = cellstr('female');
     else
         label(i, 1) = cellstr('male');
     end
 end