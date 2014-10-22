% Solution for part 5 of Assignment 7.
% Written by: Martin Jrgensen, tzk173

clear all;

% Load image data
I1 = imread('test_digits.bmp');
D0 = imread('zero.bmp');
D1 = imread('one.bmp');
D2 = imread('two.bmp');
D3 = imread('three.bmp');
D4 = imread('four.bmp');
D5 = imread('five.bmp');
D6 = imread('six.bmp');
D7 = imread('seven.bmp');
D8 = imread('eight.bmp');
D9 = imread('nine.bmp');

Digits = {D0; D1; D2; D3; D4; D5; D6; D7; D8; D9};
posOfDs = FindDigits(I1, Digits);
I2 = MarkDigits(I1, posOfDs,'red');

h = figure(751); set(h,'Color','White'); colormap(gray);
imagesc(I2); axis image; set(gca,'TickDir','out');
title('Marked Digits','FontSize',14);