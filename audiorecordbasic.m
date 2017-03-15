clc;clear all;close all;
% Reads a file and plays it at sample frequency 44100
b=audioread('C:\Users\Sharoon\Desktop\matlab\r.mp3')
sound(b,44100)
plot(b);