% Solution for part 2.2 of Assignment 6.
% Written by: Martin Jrgensen, tzk173

clear all;

% Load Images
I1 = imread('westconcordaerial.png');
I2 = imread('westconcordorthophoto.png');

% Use Points that ship with matlab
load westconcordpoints;
% Or let the user pick
% figure, imshow(I1);
% [x,y] = ginput(4); fixedPoints = [x,y];
% figure, imshow(I2);
% [x,y] = ginput(4); movingPoints = [x,y];

% Calculate transformation and perform it.
TFORM = cp2tform(movingPoints,fixedPoints,'affine');
info = imfinfo('westconcordorthophoto.png');
I3 = imtransform(I1,TFORM,'XData',[1 info.Width], 'YData',[1 info.Height]);

% Overlay the two images.
I3 = imfuse(I2, I3,'blend','Scaling','joint');

% Display procrustes information
[D,Z,T] = procrustes(movingPoints,fixedPoints);
% Print Translation, Scale factor and Rotation.
T.c, T.b, T.T

h = figure(622); set(h,'Color','White'); colormap(gray);
subplot(1,3,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('westconcordaerial.png','FontSize',14);
subplot(1,3,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('westconcordorthophoto.png','FontSize',14);
subplot(1,3,3); imagesc(I3); axis image; set(gca,'TickDir','out');
title('Result','FontSize',14);