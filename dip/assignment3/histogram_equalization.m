img = imread("AT3_1m4_03.tif");

I = img;
[r, c] = size(I);
n = r * c;
newImg = uint8(zeros(r, c));


f = zeros(256, 1);
pdf = zeros(256, 1);
cdf = zeros(256, 1);
out = zeros(256, 1);
cum = zeros(256, 1);

for i = 1:r
    for j = 1:c
        value = I(i, j);
        f(value + 1) = f(value +1) + 1;
        pdf(value + 1) = f(value + 1)./n;
    end
end

sum = 0;
L = 255;

for i = 1:size(pdf)
    sum = sum + f(i);
    cum(i) = sum;
    cdf(i) = cum(i)./n;
    out(i) = round(cdf(i) .* L);
end
for i = 1:r
    for j = 1:c
        newImg(i, j) = out(I(i, j) + 1);
    end
end

subplot(2, 2, 1), imshow(img), title("Before hist-eq");
subplot(2, 2, 3), imhist(img);
subplot(2, 2, 2), imshow(newImg), title("After hist-eq");
subplot(2, 2, 4), imhist(newImg);
% histEq = histeq(I);
% imshow(histEq);`