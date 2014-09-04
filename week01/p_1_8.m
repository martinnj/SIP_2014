% Solution for part 1.8 of Assignment 1.
% Written by: Martin Jørgensen, tzk173

clear all;

% Read the selected images.
imgs = cell(1,10);
for i=1:9
    imgs{i} = imread(strcat('AT3_1m4_0',num2str(i),'.tif'));
end
imgs{10} = imread(strcat('AT3_1m4_10.tif'));

figure(181);
colormap(gray);
for i=1:9
    subplot(2,5,i);
    imagesc(imabsdiff(imgs{i},imgs{i+1})); axis image;
    title(strcat('Diff: ',num2str(i), '-', num2str(i+1)));
end