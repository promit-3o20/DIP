img1 = imread("light3.tif");
img2 = imread("dark3.tif");
img3 = imread("high3.tif");

subplot(2,3,1),imshow(img1),title("Low contrast light");
subplot(2,3,4),imhist(img1),title("Histogram");
subplot(2,3,2),imshow(img2),title("Low contrast dark");
subplot(2,3,5),imhist(img2),title("Histogram");
subplot(2,3,3),imshow(img3),title("High contrast image");
subplot(2,3,6),imhist(img3),title("Histogram");