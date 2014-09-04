% Solution for part 1.1 of Assignment 1.
% Written by: Martin J�rgensen, tzk173

clear all;

% Generate figure and image.
figure(111);
pixels = randi([0,1],20,20);
h = imshow(pixels); axis on;

% Fix the looks.
set(gca,'XTick',0:20); xlabel('x');
set(gca,'YTick',0:20); ylabel('y');

% Get input and add the coordinate to the title, then color the
% pixel and update the figure data.
[x,y] = ginput(1);
title(strcat('(' , num2str(round(x)) , ',' , num2str(round(y)) ,')'));
pixels(round(y),round(x)) = 0; set(h,'CData',pixels);