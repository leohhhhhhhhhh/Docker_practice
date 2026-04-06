import cv2
import numpy as np

# 建立 500x500 黑色畫布
img = np.zeros((500, 500, 3), dtype=np.uint8)
# 畫藍色圓形 (BGR)
cv2.circle(img, (250, 250), 100, (255, 0, 0), -1)
# 存檔
cv2.imwrite('result.png', img)
print("Finish save result.png")