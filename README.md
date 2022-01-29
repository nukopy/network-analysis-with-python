# Network Analysis with Python

書籍「[Python で学ぶネットワーク分析 - Colaboratory と NetworkX を使った実践入門](https://www.amazon.co.jp/dp/4274224252))」（オーム社）の写経用リポジトリ

## 環境構築

Docker で環境構築、コーディングは Jupyter Lab 上で行う。

下記コマンドの `make u` を実行したら、[http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab) をブラウザで開く、または VSCode 上で cmd + shift + P > "Remote - Containers: Reopen in Container" でコンテナ内に入って作業する。

```sh
# build Docker image
make b

# start Docker container on background
make u

# stop & remove Docker container
make d
```

- ネットワーク分析に使用するソフトウェア
  - Python ライブラリ
    - NetworkX
    - graph-tool
    - igraph（[pip と conda でインストール方法が違うので注意](https://igraph.org/python/tutorial/latest/install.html#installing-igraph-via-conda)）
  - GUI ツール
    - Gephi（Mac なので Homebrew でインストールした）
