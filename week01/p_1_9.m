% Solution for part 1.9 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected images.
imgs = cell(1,10);
for i=1:9
    imgs{i} = imread(strcat('AT3_1m4_0',num2str(i),'.tif'));
end
imgs{10} = imread(strcat('AT3_1m4_10.tif'));

res = imgBlend(imgs{1},imgs{2},2.5,4);
for i=2:9
    res = imgBlend(imgs{i},imgs{i+1},2.5,4);
end

% Show result.
figure(191);
colormap(gray);
imagesc(res);