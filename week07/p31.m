% Solution for part 3 of Assignment 7.
% Written by: Martin Jrgensen, tzk173

clear all;

% Load image data
I1 = double(imread('blobs.png'));

% Create a figure like this for each SE bombination.
h = figure(7311); set(h,'Color','White'); colormap(gray);
its=4; i = 1;
for r=1:its
    SE = strel('diamond',r);
    SEi = strel(not(SE.getnhood));
    I2 = double(bwhitmiss(I1,SE,SEi));
    I3 = imtophat(I1,SE);
    I4 = imbothat(I1,SE);
    
    subplot(its,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat(['Hit-Miss, diamond, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(its,3,i); imagesc(I3); axis image; set(gca,'TickDir','out');
    title(strcat(['Top Hat, diamond, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(its,3,i); imagesc(I4); axis image; set(gca,'TickDir','out');
    title(strcat(['Bottom Hat, diamond, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
end

h = figure(7312); set(h,'Color','White'); colormap(gray);
its=4; i = 1;
for r=1:its
    SE = strel('octagon',r*3);
    SEi = strel(not(SE.getnhood));
    I2 = double(bwhitmiss(I1,SE,SEi));
    I3 = imtophat(I1,SE);
    I4 = imbothat(I1,SE);
    
    subplot(its,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat(['Hit-Miss, octagon, r=',num2str(r*3)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(its,3,i); imagesc(I3); axis image; set(gca,'TickDir','out');
    title(strcat(['Top Hat, octagon, r=',num2str(r*3)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(its,3,i); imagesc(I4); axis image; set(gca,'TickDir','out');
    title(strcat(['Bottom Hat, octagon, r=',num2str(r*3)]),'FontSize',14); grid on;
    i = i + 1;
end

h = figure(7313); set(h,'Color','White'); colormap(gray);
its=4; i = 1;
for r=1:its
    SE = strel('square',r);
    SEi = strel(not(SE.getnhood));
    I2 = double(bwhitmiss(I1,SE,SEi));
    I3 = imtophat(I1,SE);
    I4 = imbothat(I1,SE);
    
    subplot(its,3,i); imagesc(I2); axis image; set(gca,'TickDir','out');
    title(strcat(['Hit-Miss, square, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(its,3,i); imagesc(I3); axis image; set(gca,'TickDir','out');
    title(strcat(['Top Hat, square, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
    subplot(its,3,i); imagesc(I4); axis image; set(gca,'TickDir','out');
    title(strcat(['Bottom Hat, square, r=',num2str(r)]),'FontSize',14); grid on;
    i = i + 1;
end