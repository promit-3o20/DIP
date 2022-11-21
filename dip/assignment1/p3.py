import cv2 as cv
import matplotlib.pyplot as plt

p = r'../images/fingerprint2.pgm'
img = cv.imread(p)
plt.subplot(1, 2, 1)
plt.title('Original size')
plt.imshow(img)
re_img = cv.resize(img, (144, 144))
plt.subplot(1, 2, 2)
plt.title('Resized')
plt.imshow(re_img)
plt.show()
