% Solution for part 1.7 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

I1 = imread('pout.tif');
c2 = 0:(1/255):1;

I2 = histap(I1,c2);

I3 = histeq(I1,c2);

h = figure(217); colormap(gray); set(h,'Color','White');
subplot(1,3,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);

subplot(1,3,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('histap','FontSize',14);

subplot(1,3,3); imagesc(I2); axis image; set(gca,'TickDir','out');
title('histeq','FontSize',14);
