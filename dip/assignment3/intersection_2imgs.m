img1 = imread("cameraman.tif");
img2 = imread("rice.png");
[x, y ,z] = size(img1);

img = uint8(zeros(x, y, z));

for k = 1:z
    for i = 1:x
        for j = 1:y
            if img1(i , j , k) == img2(i, j, k)
                img(i, j, k) = img1(i, j, k);
            end
        end
    end
end
subplot(1, 3, 1), imshow(img1), title("Image 1");
subplot(1, 3, 2), imshow(img2), title("Image 2");
subplot(1, 3, 3), imshow(img), title("Intersected image");