img1 = imread("cameraman.tif");
img2 = imread("rice.png");
D = imdivide(img1, img2);  
subplot(1, 3, 1), imshow(img1), title("Image 1");
subplot(1, 3, 2), imshow(img2), title("Image 2");
subplot(1, 3, 3), imshow(D , []), title("Final image");