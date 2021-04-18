function [] = plot_fft( input0 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[data, fs]=audioread(input0);
N = length(data);
data = data - mean(data);
pow_spec = (abs(fft(data)/N)).^2;
hz = linspace(0, fs , N);
plot(hz,pow_spec)
xlabel('Freq'), ylabel('power_spec')
set(gca, 'xlim', [0, 400])
end

