% Solution for part 1 of Assignment 4.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I = double(imread('lena.tif'));

% Set appropriate values.
sigma = 10.0;
tau = 5.0;
sigtau = realsqrt(sigma^2+tau^2);
hsize = 200;
% This produces a 40x40 cutout of the kernels.
cropsize = 39; 
start = (hsize/2)-cropsize/2;

% Create kernels.
G1 = fspecial('gaussian', hsize, sigma);
G2 = fspecial('gaussian', hsize, tau);
G3 = fspecial('gaussian', hsize, sigtau);
G4 = conv2(G1,G2,'same');

% Crop them.
cG1 = imcrop(G1, [start start cropsize cropsize]);
cG2 = imcrop(G2, [start start cropsize cropsize]);
cG3 = imcrop(G3, [start start cropsize cropsize]);
cG4 = imcrop(G4, [start start cropsize cropsize]);


h = figure(411); set(h,'Color','White'); colormap(jet);
subplot(2,2,1); imagesc(cG1); axis image; set(gca,'TickDir','out');
title('G(x,y,\sigma)','FontSize',14);
subplot(2,2,2); imagesc(cG2); axis image; set(gca,'TickDir','out');
title('G(x,y,\tau)','FontSize',14);
subplot(2,2,3); imagesc(cG3); axis image; set(gca,'TickDir','out');
title('G(x,y,sqrt(\sigma ^2 + \tau ^2))','FontSize',14);
subplot(2,2,4); imagesc(cG4); axis image; set(gca,'TickDir','out');
title('G(x,y,\sigma)*G(x,y,\tau)','FontSize',14);