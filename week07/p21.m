% Solution for part 2.1 of Assignment 7.
% Written by: Martin Jrgensen, tzk173

clear all;

% Load image data
I1 = load('TestImageQn2.mat');
% Fixing the coordinate system to look like the correct image.
I1 = imrotate(double(I1.TestImageQn2)',90);

SE = strel('diamond',1);

I2 = imerode(I1,SE);
I3 = imdilate(I2,SE);
I4 = imopen(I1,SE);  % Erode then dilation

I5 = imdilate(I1,SE);
I6 = imerode(I5,SE);
I7 = imclose(I1,SE); % Dilation then erode

h = figure(721); set(h,'Color','White'); colormap([1,1,1 ; 0.3,0.3,0.3]);
subplot(4,2,[1 2]); pcolor(I1); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14); grid on;

% Plots for opening
subplot(4,2,3); pcolor(I2); axis image; set(gca,'TickDir','out');
title('Eroded','FontSize',14); grid on;
subplot(4,2,5); pcolor(I3); axis image; set(gca,'TickDir','out');
title('Eroded then Dilated','FontSize',14); grid on;
subplot(4,2,7); pcolor(I4); axis image; set(gca,'TickDir','out');
title('Builtin Opening','FontSize',14); grid on;

% Plots for closing
subplot(4,2,4); pcolor(I5); axis image; set(gca,'TickDir','out');
title('Dilated','FontSize',14); grid on;
subplot(4,2,6); pcolor(I6); axis image; set(gca,'TickDir','out');
title('Dilated then Dilated','FontSize',14); grid on;
subplot(4,2,8); pcolor(I7); axis image; set(gca,'TickDir','out');
title('Builtin Closing','FontSize',14); grid on;