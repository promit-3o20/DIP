from curses import window
import cv2 as cv
import matplotlib.pyplot as plt

img = cv.imread('flowers.ppm')
rgbImg = cv.cvtColor(img, cv.COLOR_BGR2RGB)
# colored_negative = abs(255-img)
colored_negative = abs(255-rgbImg)
plt.subplot(1, 2, 1)
plt.title('Flower')
plt.imshow(img)
plt.subplot(1, 2, 2)
plt.title('NegFlower')
plt.imshow(colored_negative)

plt.show()
