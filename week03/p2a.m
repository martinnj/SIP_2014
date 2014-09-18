% Solution for part 2.a of Assignment 3.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image.
I = imread('lena.tif');

%PS = abs(fft2(I)).^2;
PS = abs(fftn(I)).^2;
SPS = fftshift(ifftn(PS));

h = figure(211); colormap(jet); set(h,'Color','White');
imagesc(SPS); axis image; set(gca,'TickDir','out');
title('Power Spectrum for lena.tif','FontSize',14);
%plot(1:512,SPS); axis tight;
%mesh(SPS);
%subplot(1,2,1); imagesc(I); axis image;
%subplot(1,2,2); imagesc(SPS); axis image;
