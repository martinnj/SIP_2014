function [ I2 ] = defunc( I1, v0, w0 )
%defunc Defuncicating stuff.

Is = size(I1);
I2 = zeros(Is);

for x = 1:Is(1)
    for y=1:Is(2)
        I2(x,y) = I1(x,y)-cos(v0*x + w0*y);
    end
end
end