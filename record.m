a= audiorecorder(22050,16,1)
disp('start speaking');
recordblocking(a,5)
disp('stop')
play(a)