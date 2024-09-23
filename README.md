# my-python-app

このリポジトリは、`Docker`を使用してシンプルな`Python`アプリケーションを実行するためのサンプルプロジェクトです。

## プロジェクト構成

- `Dockerfile`: `Python`アプリケーションを実行するための`Docker`イメージを定義します。
- `app.py`: 「Hello, Docker!」と出力するシンプルな`Python`スクリプトです。

## Dockerfile の説明

```dockerfile
# ベースイメージとして公式のPythonイメージを使用
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /app

# ローカルのapp.pyをコンテナ内にコピー
COPY app.py /app

# 実行するコマンドを指定
CMD ["python", "app.py"]
```

この`Dockerfile`は以下の手順でイメージをビルドします：
1. `Python 3.9`の`slim`バージョンをベースイメージとして使用
2. コンテナ内の作業ディレクトリを`/app`に設定
3. ローカルの`app.py`ファイルをコンテナの`/app`ディレクトリにコピー
4. コンテナ起動時に`python app.py`コマンドを実行

## 使用方法

1. このリポジトリをクローンします：

```
git clone https://github.com/sankaku0724/my-python-app
cd my-python-app
```

2. `Docker`イメージをビルドします：

```
docker build -t my-python-app .
```

3. コンテナを実行します：

```
docker run my-python-app
```

実行すると、「Hello, Docker!」というメッセージが表示されます。
