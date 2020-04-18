A=imread('image3part4.jpg');
[a,b,c] = size(A);
ARed=  A(:, :, 1);
AGreen =  A(:, :, 2);
ABlue = A(:, :, 3);

preGx = [1,0,-1;2,0,-2;1,0,-1];
preGy = [1,2,1;0,0,0;-1,-2,-1];

GxRed = conv2(double(ARed),double(preGx));
GxGrenn = conv2(double(AGreen),double(preGx));
GxBlue = conv2(double(ABlue),double(preGx));

GyRed = conv2(double(ARed),double(preGy));
GyGreen = conv2(double(AGreen),double(preGy));
GyBlue = conv2(double(ABlue),double(preGy));

GRed = zeros(a,b);
for i = 1:a
    for j = 1:b
        z = GxRed(i,j)*GxRed(i,j);
        x = GyRed(i,j)*GyRed(i,j);
        v = sqrt(x+z);
        GRed(i,j) = sqrt(GxRed(i,j)*GxRed(i,j) + GyRed(i,j)*GyRed(i,j));
    end
end


%GRed = sqrt(double(GxRed.*GxRed) + double(GyRed.*GyRed));
%GGreen = sqrt(GxGrenn.*GxGrenn + GyGreen.*GyGreen);
%GBlue = sqrt(GxBlue.*GxBlue + GyBlue.*GyBlue);

G = zeros(a,b,c);
for i = 1:a
    for j = 1:b
        G(i,j,1) = GRed(i,j);
%        G(i,j,2) = GGreen(i,j);
%        G(i,j,3) = GBlue(i,j);
    end
end

%figure;
%subplot('Position',[0.2 0.35 0.30 0.30]);
imshow(uint8(GRed));
%subplot('Position',[0.5 0.35 0.30 0.30]);
%imshow(A);