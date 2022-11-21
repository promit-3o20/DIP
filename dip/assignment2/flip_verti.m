img = imread("cameraman.tif");

subplot(1,2,1);
imshow(img);
title("Orignal");
flip = img(:,  end:-1:1);
subplot(1,2,2);
imshow(flip);
title("Verticaly Fliped");