# ベースイメージとして公式のPythonイメージを使用
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /app

# ローカルのapp.pyをコンテナ内にコピー
COPY app.py /app

# 実行するコマンドを指定
CMD ["python", "app.py"]
