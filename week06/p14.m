% Solution for part 1.4 of Assignment 6.
% Written by: Martin Jrgensen, tzk173

clear all;

% Create an image with a centered white box.
I1 = zeros(5,9);
I1(3,3) = 1;
I2 = imread('lena.tif');


% Translate down to lower right corner.
I3 = MyFTranslate(I1, 2.5, 2.3);
I4 = MyFTranslate(I2, 90.5, 9.3);

% Show results.
h = figure(614); set(h,'Color','White'); colormap(gray);
subplot(2,2,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(2,2,2); imagesc(I3); axis image; set(gca,'TickDir','out');
title('Translated','FontSize',14);
subplot(2,2,3); imagesc(I2); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(2,2,4); imagesc(I4); axis image; set(gca,'TickDir','out');
title('Translated','FontSize',14);