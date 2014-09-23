% Solution for part 5 of Assignment 4.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I = double(imread('lena.tif'));

h = fspecial('gaussian', 6, 2);
n = rand(size(I)).*20;

I1 = LSI(I,h,n);

h = figure(441); set(h,'Color','White'); colormap(gray);
subplot(1,2,1); imagesc(I); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(1,2,2); imagesc(I1); axis image; set(gca,'TickDir','out');
title('g = f*h+n','FontSize',14);