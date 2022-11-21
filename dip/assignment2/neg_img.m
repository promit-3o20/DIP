img = imread("flowers.ppm");

negative_img = 255 - img;
subplot(1,2,1),imshow(img),title("Positive image");
subplot(1,2,2),imshow(negative_img),title("Negative image");