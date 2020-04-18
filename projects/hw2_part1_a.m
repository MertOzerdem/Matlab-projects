A=imread('image3.jpg');
%%onlyreds = A(:, :, 1);
%imshow(redChannel)
B = zeros(1554,2331);
for i = 1:2331
    for j = 1:1554
     
        if A(j,i,1) > 140
            B(j,i) = 1;
            %disp('job done')
        end
        
    end
end
C=B;
imshow(B)