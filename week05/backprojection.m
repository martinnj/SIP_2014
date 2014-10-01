function [ f ] = backprojection( g, M )
% backprojection takes a sinogram "g" and the number of projection angles
% "M" and recreates the image of the sinogram.

    Phi = zeros(M,1);
    N = size(g,1);
    f = zeros(N,N);
    mid = floor(N/2) + 1;
    
    [x,y] = meshgrid(ceil(-N/2):ceil(N/2-1));
    
    for i = 1:M
        Phi(i) = 180/M * (i-1) * (pi/180);
        
        rCoords = round(mid + x*sin(Phi(i)) + y*cos(Phi(i)));
        idx = find((rCoords > 0) & (rCoords <= N));
        newCoords = rCoords(idx);
        f(idx) = f(idx) + g(newCoords, i) ./ M;
    end

end