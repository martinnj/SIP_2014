function [ g ] = fftconv( f, k )
%fftconv Uses FFT to convolve a kernel on an image.
sf = size(f);
ff = fft2(f);
fk = freqz2(k,sf(1),sf(2));

fmr = ff .* fk;
g = ifft2(fmr);

end

