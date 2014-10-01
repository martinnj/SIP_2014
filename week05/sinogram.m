function [g] = sinogram(f, M)
% sinogram Construct the sinogram of an image "f" using "M" projection lines.

    Phi = zeros(M,1);
    N = size(f,1);
    g = zeros(N,M);

    for i = 1:M
        Phi(i) = 180/M * (i-1);
        tmp = imrotate(f,-Phi(i), 'bilinear', 'crop');
        g(:,i) = sum(tmp,2);
    end
end