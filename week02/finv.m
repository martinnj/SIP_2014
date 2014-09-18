function [ s ] = finv( CDF , l )
%finv Finds the pseudoinverse of a CDF.

s = min(arrayfun(@(x) CDF(x), find(arrayfun(@(x) x >= l, CDF))));

end