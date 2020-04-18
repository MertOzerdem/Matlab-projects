A=imread('image3.jpg');
%%onlyreds = A(:, :, 1);
%imshow(redChannel)
[a,b,c] = size(A);
B = zeros(a,b);
for i = 1:b
    for j = 1:a
        if A(j,i,1) > 140 && A(j,i,2) > 140 && A(j,i,3) < 30
            B(j,i) = 1;
            %disp('job done')
        end
        
    end
end
%C = meanFilter(B,9);
%imshow(C)
imshow(B)