% Solution for part 1.2 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Create figure and image data.
h = figure(121);
pixels = randi([0,1],60,60);

% Create sub figure for imshow.
subplot (1,3,1)
imshow(pixels)
title('imshow')

% Create sub figure for image.
subplot (1,3,2)
image(pixels)
title('image')  

% Create sub figure for imagesc.
subplot (1,3,3)
imagesc(pixels)
title('imagesc')