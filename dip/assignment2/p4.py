import cv2 as cv
import matplotlib.pyplot as plt

img = cv.imread('flowers.ppm')
grayImg = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
hist = cv.calcHist([grayImg], [0], None, [256], [0, 256])
plt.subplot(1,2,1)
plt.title("Grayscale image")
plt.imshow(grayImg)
plt.subplot(1,2,2)
plt.title("Image histogram")
plt.plot(hist)
plt.show()
