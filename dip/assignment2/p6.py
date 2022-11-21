import cv2 as cv
import matplotlib.pyplot as plt

img1 = cv.imread('Brain3.pgm')
hist1 = cv.calcHist([img1], [0], None, [256], [0, 256])
img2 = cv.imread('camreaman.tif')
hist2 = cv.calcHist([img2], [0], None, [256], [0, 256])

plt.subplot(2,2,1)
plt.title("Image 1")
plt.imshow(img1)
plt.subplot(2,2,2)
plt.title("Image 1 histogram")
plt.plot(hist1)
plt.subplot(2,2,3)
plt.title("Image 2")
plt.imshow(img2)
plt.subplot(2,2,4)
plt.title("Image 2 histogram")
plt.plot(hist2)
plt.show()