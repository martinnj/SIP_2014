% Solution for part 2.b of Assignment 3.
% Written by: Martin Jrgensen, tzk173

clear all;

I1 = double(imread('lena.tif'));
%k = [8 12 8;
%     12 20 12;
%     8 12 8];

k = [1,2,1;
     0,0,0;
    -1,-2,-1]; % Edge detection
% I want to run 5 iterations to make sure we have more sample points for
% the time, can be increased as needed. :)
reps = 10;

% Take time for the for loop version.
tic
for i=1:reps
    I2 = forconv(I1,k);
end
fortime = toc/reps;

% Take time for the FFT version.
tic
for i=1:reps
    I3 = fftconv(I1,k);
end
ffttime = toc/reps;

% Construct meaningfull titles.
t1 = 'Original';
t2 = strcat('For loop method: ', num2str(fortime) ,'s');
t3 = strcat('FFT method: ', num2str(ffttime) ,'s');

% Display.... EVERYTHING!
h = figure(321); colormap(gray); set(h,'Color','White');
subplot(1,3,1); imagesc(I1); axis image; set(gca,'TickDir','out');
title(t1,'FontSize',14);

subplot(1,3,2); imagesc(I2); axis image; set(gca,'TickDir','out');
title(t2,'FontSize',14);

subplot(1,3,3); imagesc(I3); axis image; set(gca,'TickDir','out');
title(t3,'FontSize',14);