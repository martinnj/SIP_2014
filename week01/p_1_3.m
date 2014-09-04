% Solution for part 1.3 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected test image.
I = imread('cell.tif');

% Create parent figure.
h = figure(131);

% Go through the bits from least significant to most.
for i=1:8
    subplot(2,4,9-i); % Ordered most-significant leftmost.
    colormap(gray);   % Force colormap.
    imagesc(arrayfun(@(x) bitget(x,i),I)); % apply bitget to each pixel.
    axis image; title(strcat('Bit:', num2str(i-1)));
end