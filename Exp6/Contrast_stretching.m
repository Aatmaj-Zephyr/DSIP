A = imread('test.jpg');
imshow(A)
A_gray = rgb2gray(A);

r1=123;
r2=205;
s1=162;
s2=196;
alpha = s1/r1;
beta = (s2-s1)/(r2-r1);
gamma = (255-r1)/(255 - s2);
B=A_gray;
for x = 1:size(A_gray, 1)
    for y = 1:size(A_gray, 2)
        if A_gray(x, y) < r1
            B(x, y) = A_gray(x, y)*alpha;
        elseif A_gray(x, y) > r1 && A_gray(x, y) <r2
            B(x, y) = (A_gray(x, y)-r1)*beta+s1;
        else
              B(x, y) = (A_gray(x, y)-r2)*gamma+s2;
        end
    end
end

imshow(B)
