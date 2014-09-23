function [ f ] = ILSI( g, h, band )
%ILSI - Loosely applied from example 6.1 in the book.
H = fftshift(psf2otf(h, size(h)));

G = fftshift(fft2(g));
idxs = find(H > band);
F = zeros(size(G)); F(idxs)=G(idxs) ./ H(idxs);
f = abs(ifft2(F));

end