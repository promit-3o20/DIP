bg = imread("../dip_imgs/bg.jpg");
tom = imread("../dip_imgs/tom.jpg");
jerry = imread("../dip_imgs/jerry.jpg");
[m,n,o] = size(bg);
tom = imresize(tom,[m,n,]);
jerry = imresize(jerry,[m,n,]);

mask1 = tom > 12;
mask2 = jerry > 12;

bg(mask1) = tom(mask1);
bg(mask2) = jerry(mask2);
imshow(bg);
