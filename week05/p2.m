% Solution for part 2 of Assignment 5.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read image(s).
I1 = double(imread('box.png'));
I2 = double(zeros(256,256));
I2(30,30) = 255;
I3 = double(imread('sinogram.png'));
I4 = imrotate(I3,90,'bilinear','loose');

% Create sinograms
I1s = sinogram(I1,180);
I2s = sinogram(I2,180);

% Recover that sh...picture!
I1r = backprojection(I1s, 180);
I2r = backprojection(I2s, 180);
I3r = backprojection(I4, 180);

h = figure(521); set(h,'Color','White'); colormap(bone);
% For box.png.
subplot(3,3,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title('box.png','FontSize',14);
subplot(3,3,2); imagesc(I1s); axis image; set(gca,'TickDir','out');
title('box.png sinogram','FontSize',14);
subplot(3,3,3); imagesc(I1r); axis image; set(gca,'TickDir','out');
title('box.png backprojection','FontSize',14);

% For non-central point source.
subplot(3,3,4); imagesc(I2); axis image; set(gca,'TickDir','out');
title('non-central point source','FontSize',14);
subplot(3,3,5); imagesc(I2s); axis image; set(gca,'TickDir','out');
title('non-central point source sinogram','FontSize',14);
subplot(3,3,6); imagesc(I2r); axis image; set(gca,'TickDir','out');
title('non-central point source backprojection','FontSize',14);

% For sinogram.png
subplot(3,3,7); imagesc(I3); axis image; set(gca,'TickDir','out');
title('sinogram.png','FontSize',14);
subplot(3,3,8); imagesc(I4); axis image; set(gca,'TickDir','out');
title('sinogram.png rotated','FontSize',14);
subplot(3,3,9); imagesc(I3r); axis image; set(gca,'TickDir','out');
title('sinogram.png backprojection','FontSize',14);