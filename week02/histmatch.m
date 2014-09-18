function [ out ] = histmatch ( I1, I2 )
%histmatch Perform historgam matching between H1 and H2.
    h1 = imhist(I1);
    c1 = cumhist(h1);

    h2 = imhist(I2);
    c2 = cumhist(h2);

    c2inv = zeros(256,1);
    for i=1:256
        l = c1(i);
        c2inv(i) = finv(c2,l);
    end

    out = c2inv(I1);
end
