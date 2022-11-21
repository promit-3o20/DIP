import cv2 as cv

p = r'../images/lenna.bmp'
img = cv.imread(p)
cv.imshow("Original", img)
gimg = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
(thresh, bandw) = cv.threshold(gimg, 127, 255, cv.THRESH_BINARY)
cv.imshow("Gray scale", gimg)
cv.imshow("B&W", bandw)
cv.waitKey(0)
