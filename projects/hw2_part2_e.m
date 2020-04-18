A=imread('gray.jpg');
imgray = A(:, :, 1);

imsaltnoise = imgray;
noisypixels = rand( size(imgray,1), size(imgray,2) );
imsaltnoise( find( noisypixels <= ( 1 / 16 ) ) ) = 255;
imsaltnoise( find( noisypixels >= ( 15 / 16 ) ) ) = 0;

%C = meanFilter(double(imsaltnoise),121);
imshow(imsaltnoise)