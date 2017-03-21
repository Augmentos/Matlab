x = imread('test.jpg');

subplot(3,3,1),imshow(x);  %subplot 1,2 means 1 row 2 columns, and 1 for fitting image in first slot

% 128*128, 256*256, 512*512
y = imresize(x,[128,128])
% figure,imshow(y);
subplot(3,3,2),imshow(y);
[m,n] = size(y);

% to grayscale
z = rgb2gray(x);
subplot(3,3,3),imshow(z);

% black has value of zero and white has value of 1
bw = im2bw(x)
subplot(3,3,4),imshow(bw)


% invert i.e compliment all the values
i = imcomplement(bw);
subplot(3,3,5),imshow(i)

% histogram
figure,imhist(z)