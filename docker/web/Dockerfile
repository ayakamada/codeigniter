## Dockerイメージを指定
FROM centos:centos7

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install yum-utils less

### httpdインストール
RUN yum -y install httpd

### SSLモジュールインストール
RUN yum -y install mod_ssl

### PHP7インストール
RUN yum -y install wget epel-release

RUN wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN rpm -Uvh ./remi-release-7.rpm
RUN sed -i '4a priority=1' /etc/yum.repos.d/remi-php71.repo
RUN yum -y install --enablerepo=remi-php71 php php-fpm php-mcrypt php-cli php-common php-devel php-gd php-mbstring php-mysqlnd php-opcache php-pdo php-pear php-pecl-apcu php-pecl-zip php-process php-xml

RUN yum clean all


### Linux設定 ###

# アプリケーション関連ディレクトリ作成
RUN mkdir -p /home/source/sites
RUN mkdir -p /home/web/my-site.com/logs
RUN mkdir -p /usr/local/bin


# シンボリックリンク作成

# シンボリックリンク作成
RUN ln -s /home/source/sites/my-site/public /home/web/my-site.com/public
RUN ln -s /home/source/sites/my-site/vender /home/web/my-site.com/vender
RUN ln -s /home/source/sites/my-site/application /home/web/my-site.com/application
RUN ln -s /home/source/sites/my-site/bin /home/web/my-site.com/bin

### Apache設定 ###

# apacheコンフィグ設定
RUN cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.org
RUN echo "" >> /etc/httpd/conf/httpd.conf
RUN echo "ErrorLog /var/www/logs/error_log" >> /etc/httpd/conf/httpd.conf
RUN echo "CustomLog /var/www/logs/access_log common" >> /etc/httpd/conf/httpd.conf
RUN echo "Include conf.d/vhosts/*.conf" >> /etc/httpd/conf/httpd.conf

### SSL設定 ###

# プライベートキーとSSL証明書を格納するディレクトリ作成
RUN mkdir -m 700 -p /usr/local/ssl/certs

### PHP設定 ###

### 自動起動設定 ###
RUN systemctl enable httpd.service