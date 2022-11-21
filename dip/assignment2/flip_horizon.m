img = imread("cameraman.tif");

subplot(2,1,1);
imshow(img);
title("Orignal");
flip = img(end:-1:1, :);
subplot(2,1,2);
imshow(flip);
title("Horizontal Fliped");