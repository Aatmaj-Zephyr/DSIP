A = imread('gorrila.jpg');
subplot(3, 3, 1);
imshow(A);
title('Original Image');

A_gray = rgb2gray(A);
subplot(3, 3, 2);
imshow(255 - A_gray);
title('Negative Image');

subplot(3, 3, 3);
B = A_gray;
for x = 1:size(A_gray, 1)
    for y = 1:size(A_gray, 2)
        if A_gray(x, y) > 180
            B(x, y) = 255;
        else
            B(x, y) = 0;
        end
    end
end
imshow(B);
title('Thresholded Image');

subplot(3, 3, 4);
B = A_gray;
for x = 1:size(A_gray, 1)
    for y = 1:size(A_gray, 2)
        if A_gray(x, y) < 210 && A_gray(x, y) > 180
            B(x, y) = 255;
        else
            B(x, y) = 0;
        end
    end
end
imshow(B);
title('Threshold without Background');

subplot(3, 3, 5);
B = A_gray;
for x = 1:size(A_gray, 1)
    for y = 1:size(A_gray, 2)
        if A_gray(x, y) < 210 && A_gray(x, y) > 180
            B(x, y) = 255;
        end
    end
end
imshow(B);
title('Threshold with Background');

subplot(3, 3, 6);
B = A_gray;
B = (logical(bitget(B, 8)) + logical(bitget(B, 7)) + logical(bitget(B, 6)) + logical(bitget(B, 5))) / 4;
imshow(B);
title('Bit Plane Slicing');

