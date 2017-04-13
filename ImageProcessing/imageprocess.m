x = imread('test.jpg');
y = imread('test1.jpg');
x1 = imresize(x,[256,256]);
y1 = imresize(y,[256,256]);
figure, imshow(x1);
figure, imshow(y1);
% Adding both images
z = imadd(x1,y1);
s = imsubtract(z,x1);
% figure, imshow(z);
figure, imshow(s);