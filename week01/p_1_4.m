% Solution for part 1.4 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected test image.
I = imread('monster.jpg');

% Convert it.
[H,S,V] = rgb2hsv(I);

figure; % Create a new figure
subplot(2,2,1); imshow(I); title('Original');  axis image;
subplot(2,2,2); imshow(H); title('Hue'); axis image;
subplot(2,2,3); imshow(S); title('Saturation'); axis image;
subplot(2,2,4); imshow(V); title('Value'); axis image;