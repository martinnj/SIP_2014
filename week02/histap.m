function [ I2 ] = histap( I1, c2 )
%histap Apply the histogram H to the image I.
h1 = imhist(I1);
c1 = cumhist(h1);
c2inv = zeros(256,1);
for i=1:256
    l = c1(i);
    c2inv(i) = finv(c2,l);
end

I2 = c2inv(I1);

end