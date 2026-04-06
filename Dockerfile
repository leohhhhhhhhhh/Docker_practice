# 使用輕量版 Python
FROM python:3.9-slim

# 設定容器內的工作目錄
WORKDIR /app

# 安裝 OpenCV 必要的系統底層庫 (Dependencies)
RUN apt-get update && apt-get install -y libglib2.0-0 && rm -rf /var/lib/apt/lists/*

# 安裝 Python 套件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 把程式碼複製進去
COPY . .

# 執行指令
CMD ["python", "app.py"]