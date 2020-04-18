I = imread('image3part4.jpg');

BW2 = edge(I,'Prewitt');
imshow(BW2);