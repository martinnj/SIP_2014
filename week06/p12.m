% Solution for part 1.2 of Assignment 6.
% Written by: Martin Jrgensen, tzk173

clear all;

% Create an image with a centered white box.
I1 = zeros(5,9);
I1(3,3) = 1;

% Translate down to lower right corner.
I2 = MyTranslate(I1, 2, 2);

% Show results.
h = figure(612); set(h,'Color','White'); colormap(gray);
subplot(1,2,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('Original','FontSize',14);
subplot(1,2,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('Translated','FontSize',14);