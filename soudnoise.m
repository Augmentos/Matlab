clc;clear all;close all;
[b,fs] = audioread('C:\Users\Sharoon\Desktop\matlab\r.mp3')
x = awgn(b,15);

% sound(b,fs),pause(5),sound(x,fs)


plot(b)

% implementing 10th order low pass filter to supress frequencies higher tha
% n 2500Hz.
fNorm = 2500/(fs/2);
[b1,a]  = butter(10,fNorm,'low');
xlow = filter(b1,a,x);
sound(x,fs),pause(5),sound(xlow,fs)
subplot(3,1,1)
plot(b(1:5000))

subplot(3,1,2)