A=imread('image3.jpg');
[a,b,c] = size(A);
for i = 1:a
    for j = 1:b
        d = double(A(i,j,1))+ double(A(i,j,2)) + double(A(i,j,3));
        B(i,j) = double(d)/3;
    end
end
%a = [225,225,225,10;0,10,0,0;100,10,100,100;100,10,100,100;50,50,10,50]
C = meanFilter(double(B),121);
imshow(uint8(C))