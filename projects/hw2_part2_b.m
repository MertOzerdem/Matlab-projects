A=imread('gray.jpg');
imgray = A(:,:,1);
gaussnoise = 32*randn(size(imgray,1), size(imgray,2));
imgaussnoise = uint8(double(imgray) + gaussnoise);

imshow(imgaussnoise)