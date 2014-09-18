% Solution for part 2.d of Assignment 3.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I1 = imread('lena.tif');

h = figure(225); set(h,'Color','White'); colormap(gray);
i = 1;
for s=[1 5 10 15 20 25 30 35 40 45 50 55]
    I2 = scale(I1, s);
    subplot(4,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat('Gaussian Filter, scale = ',num2str(s)),'FontSize',14);
    i = i + 1;
end