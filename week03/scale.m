function [ I2 ] = scale( I, scale )
%scale 
    gf = fspecial('gaussian', scale, scale/3);
    I2 = filter2(gf, I);
end