function [ fem_integral, male_integral ] = integ_freq(fileName)
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    [data, fs] = audioread(fileName);
    N = length(data);
    data = data - mean(data);
    pow_spec = (abs(fft(data)/N)).^2;
    fem_integral = 0;
    male_integral = 0;
    for i=floor((165*N/fs))+1:floor((255*N/fs)+1)
        fem_integral = fem_integral + pow_spec(i, 1);
    end
    for i=floor((85*N/fs)+1):floor((180*N/fs)+1)  
        male_integral = male_integral + pow_spec(i, 1);
    end
end