function [meanFilteredImage] = meanFilter(I,M)
N = (sqrt(M)-1)/2;
[i,j]=size(I);
temp = 0;
for n = 1 : i
    for m = 1 : j
        for a = (n-N) : (n+N)
            for b = (m-N) : (m+N)
                if a < 1 || b < 1 || a > i || b > j
                    temp = 0 + double(temp);
                else
                    temp = I(a,b) + double(temp);
                end
            end
        end
        ABC(n,m) = double(temp)/double(M);
        temp = 0;
    end
end
%display(ABC);
meanFilteredImage = ABC;
end