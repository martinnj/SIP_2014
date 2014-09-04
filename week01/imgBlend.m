function [ C ] = imgBlend( A, B, wA, wB )
  %imgBlend Performs a weighted blend of the images A and B.

  %C = A.*wA + B.*wB;
  C = imadd(immultiply(A,wA),immultiply(B,wB),'uint16');
end