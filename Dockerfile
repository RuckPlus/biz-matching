FROM python:3            
# 元となるdockerイメージを指定
ENV PYTHONUNBUFFERED 1   
# この環境変数に値を入れることでバッファを無効化する('1'じゃなくてもいい)
RUN pip install django
# pipコマンドを最新にし、txtファイル内のパッケージ（後述）をpipインストール
RUN pip install mysqlclient
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
