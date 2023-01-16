img  = imread('cameraman.tif');
S = imresize(img, [150 100]);
subplot(1,2,1),imshow(img),title("Original");
subplot(1,2,2),imshow(S),title("Scale image");
