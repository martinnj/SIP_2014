% Solution for part 1.2 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Create figure and image data.
h = figure(121);
pixels = randi([0,1],60,60);

% Create sub figure for imshow.
% Will take either an image or a matrix and treat it as image. Depending on
% the datatype it will either open and show an image-file or take a
% matrix with image data and show it as gray-scale, binary or RGB.
% This method creates quadratic "pixels", the image don't stretch by
% default.
subplot (1,3,1)
imshow(pixels)
title('imshow')

% Create sub figure for image.
% Treats each index in a matrix as a "pixel" in an image. It will read
% values from each entry and use them to create the color/intensity of a
% rectangel. This method creates rectangular pixels, the image stretches by
% default.
subplot (1,3,2)
image(pixels)
title('image')  

% Create sub figure for imagesc.
% Like 'image' but scales the data so it fits the full colormap.
subplot (1,3,3)
imagesc(pixels)
title('imagesc')