% Solution for part 1 of Assignment 5.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read image(s).
I1 = double(imread('box.png'));
I2 = double(zeros(256,256));
I2(30,30) = 255;

I3 = sinogram(I1, 180);
I4 = sinogram(I2, 180);

h = figure(511); set(h,'Color','White'); colormap(bone);
subplot(2,2,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('box.png','FontSize',14);
subplot(2,2,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title('Non-central point source','FontSize',14);
subplot(2,2,3); imagesc(I3); axis image; set(gca,'TickDir','out');
title('box.png sinogram','FontSize',14);
subplot(2,2,4); imagesc(I4); axis image; set(gca,'TickDir','out');
title('Non-central point source sinogram','FontSize',14);