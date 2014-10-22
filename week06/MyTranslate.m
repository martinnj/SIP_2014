function [ g ] = MyTranslate( f, dx, dy )
%MyTranslate Translate an image f with dx pixels along the x-axis and dy
%pixels along the y-axis.
    M = eye(3); M(1,3) = dx; M(2,3) = dy;
    
    [sx, sy] = size(f);
    g = zeros(sx,sy);
    for x=1:sx
        for y=1:sy
            np = M*[x y 1]';
            nx = np(1);
            ny = np(2);
            
            if (nx <= sx && ny <= sy)
                g(nx, ny) = f(x,y);
            end
        end
    end
    
end