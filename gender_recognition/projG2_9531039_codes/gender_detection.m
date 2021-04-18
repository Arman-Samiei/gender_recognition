function [ gender ] = gender_detection( peak_freq )
    %UNTITLED4 Summary of this function goes here
    %   Detailed explanation goes here
    male_dif = abs(peak_freq - 122);
    female_dif = abs(peak_freq - 212);
    if(male_dif < female_dif)
        gender = 'male';
    else
        gender = 'female';
    end
end

