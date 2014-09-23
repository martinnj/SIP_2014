% Solution for part 5 of Assignment 4.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I = double(imread('lena.tif'));

% Create kernel and noise.
h = fspecial('gaussian', size(I), 2);
n = rand(size(I)).*20;

% Create image with noise.
I1 = LSI(I,h,n);

h1 = figure(451); set(h1,'Color','White'); colormap(gray);
subplot(3,3,1); imagesc(I); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(3,3,2); imagesc(I1); axis image; set(gca,'TickDir','out');
title('After LSI','FontSize',14);

i=3;
for freq = [0.001 0.01 0.1 0.2 0.3 0.4 1]
    I2 = ILSI(I1,h,freq);
    subplot(3,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat('Recovered, band=',num2str(freq)),'FontSize',14);
    i = i + 1;
end