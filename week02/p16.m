% Solution for part 1.6 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

I1 = rgb2gray(imread('cola1.png'));
I2 = rgb2gray(imread('cola2.png'));
I3 = histmatch(I1, I2);

h = figure(216); colormap(gray); set(h,'Color','White');
subplot(2,3,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);

subplot(2,3,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('Target','FontSize',14);

subplot(2,3,3); imagesc(I3); axis image; set(gca,'TickDir','out');
title('Result','FontSize',14);

subplot(2,3,4); bar(imhist(I1),'FaceColor','black'); axis tight ; grid on; set(gca,'TickDir','out');
subplot(2,3,5); bar(imhist(I2),'FaceColor','black'); axis tight ; grid on; set(gca,'TickDir','out');
subplot(2,3,6); bar(imhist(I3),'FaceColor','black'); axis tight ; grid on; set(gca,'TickDir','out');
