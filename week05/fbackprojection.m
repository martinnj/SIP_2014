function [ f ] = fbackprojection( g, M )
% fbackprojection Performs filetered back projection
% of a sinogram to recreate the image. Uses a ramp filter.
    Phi = zeros(M,1);
    N = size(g,1);
    f = zeros(N,N);
    mid = floor(N/2) + 1;
        
    [x,y] = meshgrid(ceil(-N/2):ceil(N/2-1));
    h = [floor(N/2):-1:0 1:ceil(N/2-1)]';
    
    for i = 1:M
        Phi(i) = 180/M * (i-1) * (pi/180);
        rCoords = round(mid + x*sin(Phi(i)) + y*cos(Phi(i)));
        idx = find((rCoords > 0) & (rCoords <= N));
        newCoords = rCoords(idx);
        
        fpr = real(ifft(ifftshift(h.*fftshift(fft(g(:,i))))));
        
        f(idx) = f(idx) + fpr(newCoords) ./ M;
    end

end