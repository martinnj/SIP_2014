% Solution for part 1.9 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;


I1 = rgb2gray(imread('movie_flicker1.tif'));
I2 = rgb2gray(imread('movie_flicker2.tif'));

C3 = midhist(I1, I2);
I3 = histeq(I1,C3);
I4 = histeq(I2,C3);


h = figure(219); colormap(gray); set(h,'Color','White');
subplot(2,2,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('Original 1','FontSize',14);
subplot(2,2,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('Original 2','FontSize',14);
subplot(2,2,3); imagesc(I3); axis image; set(gca,'TickDir','out');
title('Altered 1','FontSize',14);
subplot(2,2,4); imagesc(I4); axis image; set(gca,'TickDir','out');
title('Altered 2','FontSize',14);
