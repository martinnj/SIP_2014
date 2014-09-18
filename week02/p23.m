% Solution for part 2.4 of Assignment 2.
% Written by: Martin Jrgensen, tzk173

clear all;

% Read base image and create mean filter.
I = imread('eight.tif');
mf = fspecial('average');

% Generate noisy and filtered images.
J1 = imnoise(I, 'salt & pepper');
J2 = imnoise(I, 'gaussian');
J3 = medfilt2(J1);
J4 = medfilt2(J2);
J5 = filter2(mf, J1);
J6 = filter2(mf, J2);

% Setup the figure.
h = figure(2231); set(h,'Color','White'); colormap(gray);

% Display subplots for SP noise.
subplot(3,2,1); imagesc(J1); axis image; set(gca,'TickDir','out');
title('Salt & Pepper Noise','FontSize',14);
subplot(3,2,3); imagesc(J3); axis image; set(gca,'TickDir','out');
title('Salt & Pepper, Median Filter','FontSize',14);
subplot(3,2,5); imagesc(J5); axis image; set(gca,'TickDir','out');
title('Salt & Pepper, Mean Filter','FontSize',14);

% Display subplots for Gaussian noise.
subplot(3,2,2); imagesc(J2); axis image; set(gca,'TickDir','out');
title('Gaussian Noise','FontSize',14);
subplot(3,2,4); imagesc(J4); axis image; set(gca,'TickDir','out');
title('Gaussian, Median Filter','FontSize',14);
subplot(3,2,6); imagesc(J6); axis image; set(gca,'TickDir','out');
title('Gaussian, Mean Filter','FontSize',14);


% Lets time the functions!
Nrange = 25; % Change this if you wanna check for more N values.
medianTimes = zeros(1,Nrange);
meanTimes =  zeros(1,Nrange);
parfor N=1:Nrange
    tic % How long does 100 median iterations take.
    for i=1:100
        medfilt2(J1,[N N]);
    end
    medianTimes(N) = toc;

    mf = fspecial('average', N);
    tic % How long does 100 mean iterations take.
    for i=1:100
        filter2(mf, J1);
    end
    meanTimes(N) = toc;
end

h = figure(2232); set(h,'Color','White');
plot(1:Nrange,meanTimes,1:Nrange,medianTimes); axis tight; grid on;
legend('Mean','Median'); xlabel('N');ylabel('Seconds');
title('Running time for 100 iterations'); set(gca,'TickDir','out');
