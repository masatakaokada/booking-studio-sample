FROM ruby:2.6.3

RUN apt-get update -qq && \
  apt-get install -y apt-utils \
  build-essential \
  libpq-dev \
  nodejs \
  default-mysql-client

# 環境変数を設定
ENV APP_HOME /app

# ディレクトリの作成と移動
WORKDIR $APP_HOME

# ホストのGemfileなどをコンテナへコピー
COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock

# BundlerでGemをインストール
RUN bundle install -j4

# バンドルインストールが終わってから他のファイルもコンテナ内へコピー
ADD . $APP_HOME

EXPOSE 3000
