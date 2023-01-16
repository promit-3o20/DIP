img = imread('cameraman.tif');
magnificationFactor = 1.25;
zoin = imresize(img, magnificationFactor);
imshowpair(img, zoin, method='montage');