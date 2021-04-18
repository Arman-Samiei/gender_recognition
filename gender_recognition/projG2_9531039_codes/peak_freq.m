function [ peak_f ] = peak_freq(fileName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[data, fs]=audioread(fileName);
N = length(data);
data = data - mean(data);
pow_spec = (abs(fft(data)/N)).^2;
peak_index = find(pow_spec==max(pow_spec));
peak_freq = (peak_index(1) - 1)*fs/N;
peak_f = peak_freq(1);
end

