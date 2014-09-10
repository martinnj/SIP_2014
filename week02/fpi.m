function [ CI ] = fpi( I, CDF )
%fpi Applies the CDF function to all pixels in the image.

CI = arrayfun(@(x) CDF(x), double(I));

end

