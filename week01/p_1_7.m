% Solution for part 1.7 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected image.
I1 = imread('rice.png');
I2 = imread('cameraman.tif');

% Add the images.
I3 = I1 + I2;
I4 = imadd(I1,I2);
I5 = imadd(I1,I2,'uint16');

% Subtract them.
I6 = I1 - I2;
I7 = imsubtract(I1,I2);

% Display them.
figure(171);
colormap(gray);

subplot(2,3,1);
imagesc(I3); axis image;
title('Matlab + operator.');

subplot(2,3,2);
imagesc(I4); axis image;
title('Matlab imadd() function.');

subplot(2,3,3);
imagesc(I5); axis image;
title('Matlab imadd(X,Y,uint16) function.');

subplot(2,3,4);
imagesc(I6); axis image;
title('Matlab - operator.');

subplot(2,3,5);
imagesc(I7); axis image;
title('Matlab imsubtract() function.');
