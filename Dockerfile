# 使用輕量版 Python 作為基底
FROM python:3.9-slim

# 設定工作目錄
WORKDIR /app

# 安裝 OpenCV 運作需要的系統底層庫 (Linux 必備)
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libgl1 \
    && rm -rf /var/lib/apt/lists/*

# 先安裝 Python 套件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 把當前目錄的所有程式碼複製進去
COPY . .

# 預設執行指令
CMD ["python", "app.py"]