% Solution for part 2.c of Assignment 3.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I1 = imread('lena.tif');
a0 = 10;
v0 = 1.5;
w0 = 0.9;
k = [2 2 2;
     2 3 2;
     2 2 2];

I2 = addfunc(I1, a0, v0, w0);
I3 = defunc(I2, v0, w0);
I4 = forconv(I2, k);

PS = abs(fftn(I2)).^2;
SPS = fftshift(ifftn(PS));

h = figure(331); set(h,'Color','White');
subplot(2,2,1); imagesc(I2); axis image; set(gca,'TickDir','out');
title('With Noise','FontSize',14); colormap(gray); freezeColors;
subplot(2,2,2); imagesc(SPS); axis image; set(gca,'TickDir','out');
title('Power spectrum after noise','FontSize',14); colormap(jet); freezeColors;
subplot(2,2,3); imagesc(I3); axis image; set(gca,'TickDir','out');
title('Function restore','FontSize',14); colormap(gray); freezeColors;
subplot(2,2,4); imagesc(I4); axis image; set(gca,'TickDir','out');
title('Kernel restore','FontSize',14);