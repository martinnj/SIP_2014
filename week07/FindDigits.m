function [ posOfDs ] = FindDigits( I, Digits )
%FindDigits Finds instances of each Digit in Digits.
%   Uses relaxed Hit-Miss to locate digits, cannot see rotated or scaled
%   digits. Returns a 1xN Cell array where N is the number of positive
%   hits. Each cell contains an [x,y] tuple with a coordinate for a hit.
    posOfDs = cell(size(Digits));
    for d=1:size(Digits,1)
        D = Digits{d};
        nh = double(D);
        I2 = double(bwhitmiss(I,nh));
        [y, x] = find(I2);    % Need to force find to return xy instead of linear coord.
        posOfDs{d} = [x y];
    end
    posOfDs = posOfDs'; % Transpose to make it a proper 'list'
end