% Solution for part 1.4 of Assignment 2.
% Written by: Martin Jørgensen, tzk173

clear all;

I = imread('pout.tif');

% Test the fpi function by using a simple addition function.
Iout = fpi(I,@(x) x+100.4);

% Test some pixels :)
res0 = (Iout(1,1) - double(I(1,1)) == 100.4)
res1 = (Iout(123,200) - double(I(123,200)) == 100.4)
res2 = (Iout(3,200) - double(I(3,200)) == 100.4)