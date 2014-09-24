% Solution for part 6 of Assignment 4.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I = double(imread('lena.tif'));

% Create kernel and noise.
h = fspecial('gaussian', size(I), 2);
n = rand(size(I)).*20;

% Create image with noise.
I1 = LSI(I,h,n);

% Create correlation data
NP = abs(fftn(n)).^2;
NPOW = sum(NP(:))/numel(n);
NCORR = fftshift(real(ifftn(NP)));

IP = abs(fftn(I)).^2;
IPOW = sum(IP(:))/numel(I);
ICORR = fftshift(real(ifftn(IP)));

NSR = NPOW ./ IPOW;

% Wiener filter using both  power ratio and auto correlation.
I2 = deconvwnr(I1, h, NSR);
I3 = deconvwnr(I1, h, NCORR,ICORR);

h1 = figure(461); set(h1,'Color','White'); colormap(gray);
subplot(2,2,1); imagesc(I); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(2,2,2); imagesc(I1); axis image; set(gca,'TickDir','out');
title('After LSI','FontSize',14);
subplot(2,2,3); imagesc(I2); axis image; set(gca,'TickDir','out');
title('Wiener w. Noise-Signal Power Ratio','FontSize',14);
subplot(2,2,4); imagesc(I3); axis image; set(gca,'TickDir','out');
title('Wiener w. Noise & Image Autocorrelation','FontSize',14);
