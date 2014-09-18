% Solution for part 2.5 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image and create mean filter.
I = imread('eight.tif');

h = figure(225); set(h,'Color','White'); colormap(gray);
i = 1;
for sigma=[1 2 4 6 8 10 12 14 15 20 25 100]
    gf = fspecial('gaussian', 3*sigma, sigma);
    I2 = filter2(gf, I);
    subplot(4,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat('Gaussian Filter, \sigma = ',num2str(sigma)),'FontSize',14);
    i = i + 1;
end