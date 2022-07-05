import cv2
import matplotlib.pyplot as plt
import cvlib as cv
from cvlib.object_detection import draw_bbox


# im = cv2.imread('apple.jpeg')
# im = cv2.imread("bananas.jpeg")
# im = cv2.imread("fruits.jpeg")


im = cv2.imread("1 (1).jpg")
# im = cv2.imread("1 (2).jpg")
# im = cv2.imread("1 (3).jpg")
# im = cv2.imread("1 (4).jpg")


bbox, label, conf = cv.detect_common_objects(im)
output_image = draw_bbox(im, bbox, label, conf)
plt.imshow(output_image)
plt.show()