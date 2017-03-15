clc;clear all;close all;
% Recording voice from microphone
b =  audiorecorder(44100,16,1)
disp('start speaking');
recordblocking(b,5)
disp('stop speaking')
b = getaudiodata(b)
% Adding Noise
x = awgn(b, 15)
fs=44100
% sound(b,fs),pause(5),sound(x,fs)


figure(1);
plot(b(1:5000))

% implementing 10th order low pass filter to supress frequencies higher tha
% n 2500Hz.
fNorm = 1500/(fs/2);
[b1,a]  = butter(10,fNorm,'low');
xlow = filter(b1,a,x);
% sound(x,fs),pause(5),sound(xlow,fs)
subplot(3,1,1)
figure(2);
plot(x(1:5000))

subplot(3,1,2)