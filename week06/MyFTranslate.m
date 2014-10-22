function [ g ] = MyFTranslate( f, dx, dy )
%MyTranslate Translate an image f with dx pixels along the x-axis and dy
%pixels along the y-axis. Using FFT this time.

    F=fftshift(fft2(f));
    
    [sx, sy] = size(f);
    
    [u,v] = meshgrid(-(sy/2):((sy/2)-1), -(sx/2):((sx/2)-1));
    ex = exp(-i*2*pi*((u*dx)/sy + (v*dy)/sx));
    F=F.*ex;

    g = abs(real(ifft2(ifftshift(F))));
end