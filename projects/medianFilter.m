function [medianFilteredImage] = medianFilter(I,M)
N = (sqrt(M)-1)/2;
[i,j]=size(I);
for n = 1 : i
    for m = 1 : j
        arrayLength = 1;
        for a = (n-N) : (n+N)
            for b = (m-N) : (m+N)
                if a < 1 || b < 1 || a > i || b > j
                    Arr(arrayLength) = 0;
                    arrayLength = arrayLength + 1;
                else
                    Arr(arrayLength) = I(a,b);
                    arrayLength = arrayLength + 1;
                end
            end
        end
        sortedArr = sort(Arr);
        medianValue = sortedArr(round(M/2)); 
        ABC(n,m) = medianValue;
    end
end
medianFilteredImage = ABC;
end

