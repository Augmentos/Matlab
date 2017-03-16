[x,fs] = audioread('r.mp3')
% ---------------------------
% For recordng in real time
% x =  audiorecorder(44100,16,1)
% disp('start speaking');
% recordblocking(x,5)
% disp('stop speaking')
% x = getaudiodata(x)
% ---------------------------

length = size(x);

a=0.8
delay=0.5
D = delay*fs;
y=zeros(length);
for i=1+D:1:length;
      y(i) = x(i) + a*x(i-D);
end;
sound(x,fs),pause(5),sound(y,fs);