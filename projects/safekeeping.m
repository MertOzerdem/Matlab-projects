A=imread('image3.jpg');
[a,b,c] = size(A);
B = zeros(a,b);
for i = 1:a
    for j = 1:b
        d = double(A(i,j,1))+ double(A(i,j,2)) + double(A(i,j,3));
        B(i,j) = double(d)/3;
    end
end
imgray = B;

gaussnoise = 8*randn(size(imgray,1), size(imgray,2));
imgaussnoise = uint8(double(imgray) + gaussnoise);

imshow(imgaussnoise)