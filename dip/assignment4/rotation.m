img = imread('cameraman.tif');
R = imrotate(img,45);
subplot(1,2,1),imshow(img),title("Original");
subplot(1,2,2),imshow(R),title("Rotate image");
