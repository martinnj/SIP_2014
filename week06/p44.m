% Solution for part 4.4 of Assignment 6.
% Written by: Martin Jrgensen, tzk173

clear all;

% Define the points
X = [[0,0]
     [1,0]
     [1,1]
     [0,1]
     [0,0]];
Y = [[0.6,0.6]
     [1.3,0.8]
     [1,1.6]
     [0.4,1]
     [0.6,0.6]];

% Perform analysis & alignment.
TFORM = cp2tform(X, Y, 'projective');
Z = tformfwd(TFORM, X(:,1), X(:,2));
 
% Show results.
h1 = figure(644); set(h1,'Color','White');

subplot(1,2,1);
plot(X(:,1), X(:,2),'r',Y(:,1), Y(:,2),'b'); 
legend('X','Y','Location','northwest'); grid on; axis image;
title('Plot of X and Y','FontSize',14); set(gca,'TickDir','out');

subplot(1,2,2);
plot(X(:,1), X(:,2),'r',Y(:,1), Y(:,2),'b',Z(:,1), Z(:,2),'--r');
legend('X','Y','Projective X','Location','northwest'); grid on; axis image;
title('Projective transformation of X unto Y','FontSize',14); set(gca,'TickDir','out');