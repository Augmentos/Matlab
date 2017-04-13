% Capture the video frame using the videoinput function
% You have to replace the resolution and your installed adapter
vid = videoinput('matrox',1);

% Set the properties of the video object
set(vid,'FramePerTrigger',Inf);
set(vid,'ReturnedColorSpace','rgb')
vid.FrameGrabInterval = 5;
% Start the  video acquisition here
start(vid);
% Set a loop that stop after 100 frames of acquisition
while(vid.FrameAcquired<=200)
%     Get the snapshot of the current frame
    data = getsnapshot(vid);
    
%     Display the image
    imshow(data)
   
end
% Both the loops end here
% Stop the video acquisition
stop(vid);

% Flush all the image data stored in the memory buffer.
flushdata(vid);

% CLear all variables
clear all
sprintf('%s','That was all about Image tracking. Gues that was pretty awesome.');