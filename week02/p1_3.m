% Solution for part 1.3 of Assignment 2.
% Written by: Martin Jørgensen, tzk173

clear all;

I = imread('pout.tif');

% Create histogram.
hist = imhist(I);

% Create cumulative histogram.
cumhist = cumsum(hist);

% Display side by side.
h = figure(213); set(h,'Color','White');
subplot(1,2,1); bar(hist,'FaceColor','black'); axis tight ; grid on;
set(gca,'Xtick',1:16:300); set(gca,'TickDir','out');
title('Histogram for pout.tif','FontSize',14);

subplot(1,2,2); bar(cumhist,'FaceColor','black'); axis tight ; grid on;
set(gca,'Xtick',1:16:300); set(gca,'TickDir','out');
title('Cummulative Histogram for pout.tif','FontSize',14);