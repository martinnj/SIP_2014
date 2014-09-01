% Solution for part 1.5 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected test image.
I = imread('monster.jpg');

% Make Throw away resolution.
I1 = imresize(I,0.09);
I2 = imresize(I,0.05);
I3 = imresize(I,[100 600]);

figure; % Create a new figure.
subplot(2,2,1); imshow(I); title('Original');  axis image;
subplot(2,2,2); imshow(I1); title('(I,0.9)'); axis image;
subplot(2,2,3); imshow(I2); title('(I,0.5)'); axis image;
subplot(2,2,4); imshow(I3); title('(I,[100 600])'); axis image;


% Something about making it bigger. Whoop.