A=imread('imsaltnoise.jpg');
a = A(:, :, 1);
C = meanFilter(double(a),121);
imshow(uint8(C))