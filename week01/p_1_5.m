% Solution for part 1.5 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected test image.
I = imread('monster.jpg');

% Make Throw away resolution.
I1 = imresize(I,0.09);
I2 = imresize(I,0.05);
I3 = imresize(I,[100 600]);

figure(151); % Create a new figure.
subplot(2,2,1); imshow(I); title('Original');  axis image on;
subplot(2,2,2); imshow(I1); title('(I,0.9)'); axis image on;
subplot(2,2,3); imshow(I2); title('(I,0.5)'); axis image on;
subplot(2,2,4); imshow(I3); title('(I,[100 600])'); axis image on;


% Upscaling experiments.

% Warmup the image cache to get better times.
for i=1:50
    I4 = imresize(I1,2,'nearest');
end

% Get the proper timings.
tic
I4 = imresize(I1,2,'nearest');
t1 = toc;

tic
I5 = imresize(I1,2,'bilinear');
t2 = toc;

tic
I6 = imresize(I1,2,'bicubic');
t3 = toc;


figure(152);
subplot(2,2,1); imshow(I1); title('Original');  axis image on;
subplot(2,2,2); imshow(I4); axis image on;
title(strcat('Interpolator: Nearest, Runtime in seconds: ',num2str(t1)));
subplot(2,2,3); imshow(I5); axis image on;
title(strcat('Interpolator: Bilinear, Runtime in seconds: ',num2str(t2)));
subplot(2,2,4); imshow(I6); axis image on;
title(strcat('Interpolator: Bicubic, Runtime in seconds: ',num2str(t3)));