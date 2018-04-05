## Dockerイメージを指定
FROM centos:centos7

RUN yum check
# RUN yum update -y

RUN yum -y install yum-utils
RUN yum -y install less

### httpdインストール
RUN yum -y install httpd

### PHP7インストール
RUN yum -y install wget epel-release

RUN wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN rpm -Uvh ./remi-release-7.rpm
RUN sed -i '4a priority=1' /etc/yum.repos.d/remi-php71.repo
RUN yum -y install --enablerepo=remi-php71 php php-fpm php-mcrypt php-cli php-common php-devel php-gd php-mbstring php-mysqlnd php-opcache php-pdo php-pear php-pecl-apcu php-pecl-zip php-process php-xml
RUN yum clean all

### Linux設定 ###
# vpsユーザー作成
RUN useradd web-user

# パスワード設定
RUN echo 'web-user:okayama' | chpasswd

# web-userをwheelグループに追加
RUN usermod -G wheel web-user

# アプリケーション関連ディレクトリ作成
RUN mkdir -p /home/source/sites
RUN mkdir -p /usr/local/bin

# ディレクトリのオーナー変更
RUN chown web-user:web-user -R /home/source/sites
RUN chown web-user:web-user -R /usr/local/bin

### composerインストール
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

## codeigniter install
RUN composer create-project kenjis/codeigniter-composer-installer codeigniter


### Linux設定 ###


# シンボリックリンク作成




### Apache設定 ###

# ディレクトリを作成
RUN mkdir -p /etc/httpd/conf.d/vhosts

# バーチャルホスト作成
#ADD vhosts/gp32x.com.conf /etc/httpd/conf.d/vhosts/gp32x.com.conf


# apacheコンフィグ設定
RUN cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.org
RUN echo "" >> /etc/httpd/conf/httpd.conf
RUN echo "User web-user" >> /etc/httpd/conf/httpd.conf
RUN echo "Group web-user" >> /etc/httpd/conf/httpd.conf
#RUN echo "Include conf.d/vhosts/*.conf" >> /etc/httpd/conf/httpd.conf


### PHP設定 ###


### 自動起動設定 ###
RUN systemctl enable httpd.service

ENTRYPOINT /sbin/init