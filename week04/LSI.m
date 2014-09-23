function [ g ] = LSI( f, h, n )
%LSI Calculates the Linear Shift Invariant
    g = conv2(f,h,'same') + n;
end

