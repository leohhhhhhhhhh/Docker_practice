import cv2
import numpy as np

print("Docker 容器正在執行影像處理...")
# 建立一個簡單的矩形
img = np.zeros((200, 200), dtype=np.uint8)
cv2.rectangle(img, (50, 50), (150, 150), 255, -1)

# 存檔（這會存在容器內部）
cv2.imwrite('output.png', img)
print("處理完成！結果已存為 output.png")