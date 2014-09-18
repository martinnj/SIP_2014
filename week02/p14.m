% Solution for part 1.4 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

I1 = imread('pout.tif');

C = cumhist(imhist(I1));

I2 = fpi(I1, C);

h = figure(214); colormap(gray); set(h,'Color','White');
subplot(1,2,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(1,2,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('After CDF is added applied','FontSize',14);
