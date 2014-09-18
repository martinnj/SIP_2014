function [ I2 ] = addfunc( I1, a0, v0, w0 )
%addfunc a0 is assumed to be the value of the pixel.

Is = size(I1);
I2 = zeros(Is);

for x = 1:Is(1)
    for y=1:Is(2)
        I2(x,y) = I1(x,y)+ a0*cos(v0*x + w0*y);
    end
end
end
