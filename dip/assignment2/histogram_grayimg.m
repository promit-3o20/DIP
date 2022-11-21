img = imread("Brain3.pgm");

subplot(2,1,1),imshow(img),title("Image");
subplot(2,1,2),imhist(img),title("Histogram");