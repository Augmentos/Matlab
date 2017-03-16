[y,fs] = audioread('r.mp3');
yy=atan(20*y);
soundsc(yy,fs);