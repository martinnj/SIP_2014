% Solution for part 4 of Assignment 5.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read image(s).
%file = 'box.png';
file = 'mir.tif';
I1 = double(imread(file));

i = 1;
h = figure(541); set(h,'Color','White'); colormap(bone);
for M=[8 16 64 128 256]
    I2 = sinogram(I1,M);
    I3 = backprojection(I2,M);
    I4 = fbackprojection(I2,M);
    subplot(3,5,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat('Sinogram with M=',num2str(M)),'FontSize',14);
    subplot(3,5,i+5); imagesc(I3); axis image; set(gca,'TickDir','out');
    title(strcat('Backprojecting with M=',num2str(M)),'FontSize',14);
    subplot(3,5,i+10); imagesc(I4); axis image; set(gca,'TickDir','out');
    title(strcat('Filtered Backprojecting with M=',num2str(M)),'FontSize',14);
    
    i = i + 1;
end