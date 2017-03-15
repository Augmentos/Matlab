clc;clear all;close all;
t=0:.01:3;
x=sin(2*pi*10*t);
x2=sin(2*pi*20*t);
x3=x+x2;
% Taking Fourier Transform
x4=fft(x3);
plot(abs(x4))