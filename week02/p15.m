% Solution for part 1.5 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

I = imread('pout.tif');
H = imhist(I);
CDF = cumhist(H);

finv(CDF,0.0239)
