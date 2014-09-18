function [ out ] = cumhist( hist )
%cumhist Creates the normalized cumulative histogram for a given grayscale histogram.

% Normalize
hist = hist/sum(hist);

% Create cumulative histogram.
out = cumsum(hist);

end