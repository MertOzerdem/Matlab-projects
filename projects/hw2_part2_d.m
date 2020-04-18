A=imread('image3.jpg');
[a,b,c] = size(A);
for i = 1:a
    for j = 1:b
        d = double(A(i,j,1))+ double(A(i,j,2)) + double(A(i,j,3));
        B(i,j) = double(d)/3;
    end
end
imshow(B);

imgray = B;

imsaltnoise = imgray;
noisypixels = rand( size(imgray,1), size(imgray,2) );
imsaltnoise( find( noisypixels <= ( 1 / 16 ) ) ) = 255;
imsaltnoise( find( noisypixels >= ( 15 / 16 ) ) ) = 0;

imshow(imsaltnoise);
imshow(uint8(imsaltnoise))
