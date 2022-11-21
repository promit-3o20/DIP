import cv2 as cv

p = r'../images/cameraman.tif'
img = cv.imread(p)
cv.imwrite('CamMan.jpg',img)
