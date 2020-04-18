A=imread('image3part4.jpg');
[a,b,c] = size(A);
ARed=  A(:, :, 1);
AGreen =  A(:, :, 2);
ABlue = A(:, :, 3);

preGx = [1,0,-1;2,0,-2;1,0,-1];
preGy = [1,2,1;0,0,0;-1,-2,-1];

GxRed = conv2(ARed,preGx);
GxGrenn = conv2(AGreen,preGx);
GxBlue = conv2(ABlue,preGx);

GyRed = conv2(ARed,preGy);
GyGreen = conv2(AGreen,preGy);
GyBlue = conv2(ABlue,preGy);

GRed = sqrt(GxRed.^2 + GyRed.^2);
GGreen = sqrt(GxGrenn.^2 + GyGreen.^2);
GBlue = sqrt(GxBlue.^2 + GyBlue.^2);

G = zeros(a,b,c);
for i = 1:a
    for j = 1:b
        G(i,j,1) = GRed(i,j);
        G(i,j,2) = GGreen(i,j);
        G(i,j,3) = GBlue(i,j);
    end
end
Z = uint8(G(:,:,1));
%figure;
%subplot('Position',[0.2 0.35 0.30 0.30]);
imshow(uint8(G));
%subplot('Position',[0.5 0.35 0.30 0.30]);
%imshow(A);