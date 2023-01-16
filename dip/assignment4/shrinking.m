img  = imread("cameraman.tif");
Sh = imresize(img, 0.4, "nearest");
subplot(1,2,1),imshow(img),title("Original");
subplot(1,2,2),imshow(Sh),title("Shrinked image");