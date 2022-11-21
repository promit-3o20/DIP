import cv2 as cv
import matplotlib.pyplot as plt

img = cv.imread('flowers.ppm')
hist = cv.calcHist([img], [0], None, [256], [0, 256])
plt.subplot(1,2,1)
plt.title("Colour image")
plt.imshow(img)
plt.subplot(1,2,2)
plt.title("Image histogram")
plt.plot(hist)
plt.show()