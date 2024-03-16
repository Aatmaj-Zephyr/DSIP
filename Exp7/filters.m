% Read an image
img = imread('gorrila.jpg');

% Define a Low-pass filter kernel
kernel = [1/9,1/9,1/9,1/9,1/9,1/9,1/9,1/9,1/9];

% Apply the filter using imfilter
filtered_img = imfilter(img, kernel);


% Define a high-pass filter kernel
kernel2 = [-1/9,-1/9,-1/9,-1/9, 8/9,-1/9,-1/9,-1/9,-1/9];

% Apply the filter using imfilter
filtered_img2 = imfilter(img, kernel2);

%median filter
grayImage = rgb2gray(img);
noisy_img = imnoise(grayImage, 'salt & pepper', 0.05);
filtered_img3 = medfilt2(noisy_img);



% Display the original and filtered images
subplot(2, 3 , 1);
imshow(img);
title('Original Image');

subplot(2,3, 2);
imshow(filtered_img);
title('Low-Pass Filtered Image');


subplot(2, 3, 3);
imshow(filtered_img2);
title('High-Pass Filtered Image');

subplot(2, 3, 4);
imshow(noisy_img);
title('Noisy Image');

subplot(2, 3, 5);
imshow(filtered_img3);
title('Median Filtered Image');
