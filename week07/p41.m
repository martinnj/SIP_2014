% Solution for part 4 of Assignment 7.
% Written by: Martin Jrgensen, tzk173

clear all;

% Load image data
I1 = imread('rice.png');

h = figure(741); set(h,'Color','White'); colormap(gray);

i = 1;
for r=[6 7 8 9]
    background = imopen(I1,strel('disk',r));
    I2 = imsubtract(I1, background);
    I3 = imadjust(I2);
    subplot(4,3,i); imagesc(background); axis image; set(gca,'TickDir','out');
    title(strcat(['Background, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(4,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title('Result','FontSize',14); grid on;
    i = i + 1;
    subplot(4,3,i); imagesc(I3); axis image; set(gca,'TickDir','out');
    title('Contrast Adjusted','FontSize',14); grid on;
    i = i + 1;
end