A=imread('imsaltnoise.jpg');
a = A(:, :, 1);
C = medianFilter(a,121);
imshow(uint8(C))