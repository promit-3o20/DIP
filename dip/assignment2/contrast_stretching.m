img = imread("bacteria.tif");
m = input("Enter value of m--> ");
n = input("Enter value of n--> ");
cont_stretch = 1./(1+(m./double(img)-eps).^n);
subplot(2,2,1),imshow(img),title("Low contrast image");
subplot(2,2,3),imhist(img),title("Histogram");
subplot(2,2,2),imshow(cont_stretch),title("Contrast stretched image");
subplot(2,2,4),imhist(cont_stretch),title("Histogram");
