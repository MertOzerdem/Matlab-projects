A=imread('image3.jpg');
[a,b,c] = size(A);
for i = 1:a
    for j = 1:b
        d = double(A(i,j,1))+ double(A(i,j,2)) + double(A(i,j,3));
        B(i,j) = double(d)/3;
    end
end
C = medianFilter(B,121);
imshow(uint8(C))