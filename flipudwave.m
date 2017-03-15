clc;clear all;close all;
% [b,fs] = audioread('C:\Users\Sharoon\Desktop\matlab\r.mp3')
b =  audiorecorder(44100,16,1)
disp('start speaking');
recordblocking(b,5)
disp('stop speaking')
b = getaudiodata(b)
% Adding noise
x = awgn(b, 15)
fs=44100
% sound(b,fs),pause(5),sound(x,fs)
% Reverses the wave
y=  flipud(b)
sound(y,fs);
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