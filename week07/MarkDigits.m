function [ I2 ] = MarkDigits( I, pos, color )
%MarkDigits Marks positions on an image using a '+' sign with a color.
%   pos must be a 1xN Cell array with each cell containing an [x,y]
%   coordinate for a position. color must be a string with a valid color.
    I2 = double(I);
    for P=pos
        Coord = P{1};
        if size(Coord,1) > 0
            I2 = insertMarker(I2, Coord,'color',color);
        end
    end

end