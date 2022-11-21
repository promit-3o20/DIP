import cv2 as cv

path = r"../images/tire.tif"
img = cv.imread(path)
cv.imshow('Tire', img)
cv.waitKey(0)