A = imread('test.jpg');
imshow(A)
A_gray = rgb2gray(A);
size(A)


index=zeros(255,1);
for x = 1:size(A_gray, 1)
    for y = 1:size(A_gray, 2)
        index(A_gray(x, y)+1,1)=index(A_gray(x, y)+1,1)+1; 
       
    end
end

running_sum  = index;
for i = 2:255
    running_sum(i,1)=running_sum(i,1)+running_sum(i-1,1);
end
running_sum;
running_sum = running_sum/ running_sum(255)*255;


for x = 1:size(A_gray, 1)
    for y = 1:size(A_gray, 2)
        A_gray(x, y) = running_sum(A_gray(x, y)+1,1);
       
    end
end


imshow(A_gray)
