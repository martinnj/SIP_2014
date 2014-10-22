% Solution for part 2.2 of Assignment 7.
% Written by: Martin Jrgensen, tzk173

clear all;

% Load image data
I1 = load('TestImageQn2.mat');
% Fixing the coordinate system to look like the correct image.
I1 = imrotate(double(I1.TestImageQn2)',90);

h = figure(722); set(h,'Color','White'); colormap([1,1,1 ; 0.3,0.3,0.3]);

i = 1;

for r=0:2
    SE = strel('diamond',r);
    I2 = imopen(I1,SE);  % Erode then dilation
    I3 = imclose(I1,SE); % Dilation then erode
    subplot(3,2,i); pcolor(I2); axis image; set(gca,'TickDir','out');
    title(strcat(['Opened with r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(3,2,i); pcolor(I3); axis image; set(gca,'TickDir','out');
    title(strcat(['Closed with r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
end