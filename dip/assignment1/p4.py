import cv2 as cv

img = cv.imread("../images/rgb2.jpg")
blue = img.copy()
blue[:, :, 1] = 0
blue[:, :, 2] = 0
green = img.copy()
green[:, :, 0] = 0
green[:, :, 2] = 0
red = img.copy()
red[:, :, 0] = 0
red[:, :, 1] = 0
cv.imshow("RGB", img)
cv.imshow("Blue", blue)
cv.imshow("Green", green)
cv.imshow("Red", red)
cv.waitKey(0)
cv.destroyAllWindows()
