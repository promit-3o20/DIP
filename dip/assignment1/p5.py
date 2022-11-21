import cv2 as cv

p = r'../images/lenna.bmp'
img = cv.imread(p)
cv.imshow('Original', img) 
gray_img = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('Grayscale', gray_img)
cv.waitKey(0)