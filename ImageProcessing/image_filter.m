x = imread('test.jpg');
% convert to greyscale
% x = imresize(x,[512,512]);
y = rgb2gray(x);

% e = edge(y,'sobel');
% figure(1), imshow(e)
% e1 = edge(y,'canny');
% figure(2), imshow(e1);

%add gaussian noise
% ynoisy = imnoise(y,'gaussian');
ynoisy = imnoise(y,'salt & pepper');
figure, imshow(ynoisy);

filterr = fspecial('motion',20,45);
ymotion = imfilter(y,filterr);
figure, imshow(ymotion);

% filterr =  medfilt2(ynoisy,[3,3]);
% figure, imshow(filterr);

% filterr = fspecial('average',[5,5]); % filter specialization
% filter name is moving average filter, kernel size is 3*3
% resolution decreases after using filters, adaptive filters do take info
% from edges of images


% yclean = imfilter(ynoisy,filterr);
% figure, imshow(yclean);