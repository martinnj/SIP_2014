% Solution for part 1.3 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

I = imread('pout.tif');

% Create histogram and normalize.
hist = imhist(I);

% Create cumulative histogram.
cumhist = cumhist(hist);

% Also make the normalized
normhist = hist/sum(hist);

% Display side by side.
h = figure(213); set(h,'Color','White');
subplot(1,3,1); bar(hist,'FaceColor','black'); axis tight ; grid on;
set(gca,'TickDir','out');
title('Histogram for pout.tif','FontSize',14);

subplot(1,3,2); bar(normhist,'FaceColor','black'); axis tight ; grid on;
set(gca,'TickDir','out');
title('Normalized Histogram','FontSize',14);

subplot(1,3,3); bar(cumhist,'FaceColor','black'); axis tight ; grid on;
set(gca,'TickDir','out');
title('Cummulative Histogram','FontSize',14);
