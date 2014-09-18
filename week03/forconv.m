function [ g ] = forconv( f, k )
%forconv Does convulution using for loops.

fs = size(f);
g = zeros(fs);
for y = 2:fs(1)-1
    for x = 2:fs(2)-1
        m = [f(x-1, y-1) f(x, y-1)  f(x+1, y-1);
             f(x-1, y)   f(x, y)    f(x+1, y);
             f(x-1 ,y+1) f(x, y+1)  f(x+1, y+1)];
        M = m*k;
        g(x,y) = M(2,2);
    end
end

end

