function [ I2 ] = scale( I, scale, sigma)
%scale 
    gf = fspecial('gaussian', scale, sigma);
    I2 = conv2(gf, I);
end