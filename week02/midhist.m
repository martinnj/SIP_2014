function [ C3 ] = midhist( I1, I2 )
%midhist Produces the midway histogram of two images.

H1 = imhist(I1);
H2 = imhist(I2);
C1 = cumhist(H1);
C2 = cumhist(H2);
C3 = (C1 + C2) / 2;

end