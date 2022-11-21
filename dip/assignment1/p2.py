import cv2 as cv

p = r'../images/cameraman.tif'
img = cv.imread(p)
oldimg = cv.imread(p)
height = img.shape[0]
width = img.shape[1]
for i in range(0, height):
    for j in range(0, width):
        img[i, j] = (img[i, j] + 20) % 256
 
cv.imshow("newCameraman", img)
cv.imshow("oldCameraman", oldimg)
cv.waitKey(0)