img = imread('cameraman.tif');
t = imtranslate(img, [25,15]);
subplot(1,2,1),imshow(img),title("Original");
subplot(1,2,2),imshow(t),title("Translated");