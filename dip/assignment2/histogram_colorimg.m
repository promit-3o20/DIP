img = imread("flowers.ppm");

subplot(2,1,1),imshow(img),title("Image");
subplot(2,1,2),imhist(img),title("Histogram");