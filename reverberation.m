a1=0.6;
a2=.4;
a3=.2;
a4=.1;
a5=.8;
a6=.8;
a7=.8;

R1=2000;
R2=4000;
R3=1000;
R4=500;
R5=2000;
R6=2000;
% [d,r]=audioread('r.mp3');
% For recording in real time
% --------------------------
d =  audiorecorder(44100,16,1);
disp('start speaking');
recordblocking(d,5)
disp('stop speaking')
d = getaudiodata(d)
r=44100;
% --------------------------
num1 = [0,zeros(1,R1-1),1];
den1=[1,zeros(1,R1-1),-a1];
d1 = filter(num1,den1,d);

num2 = [0,zeros(1,R2-1),1];
den2=[1,zeros(1,R2-1),-a2];
d2 = filter(num2,den2,d);

num3 = [0,zeros(1,R3-1),1];
den3=[1,zeros(1,R3-1),-a3];
d3 = filter(num3,den3,d);

num4 = [0,zeros(1,R4-1),1];
den4=[1,zeros(1,R4-1),-a4];
d4 = filter(num4,den4,d);
dIR=d1+d2+d3+d4;

num5 = [a5,zeros(1,R5-1),1];
den5=[1,zeros(1,R5-1),a5];
dALL1 = filter(num5,den5,dIR);

num6 = [a6,zeros(1,R6-1),1];
den6=[1,zeros(1,R6-1),a6];
dALL2 = filter(num6,den6,dALL1);
dTOTAL =d + a7*dALL2;
soundsc(dTOTAL,r);