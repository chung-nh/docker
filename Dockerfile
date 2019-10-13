FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections \
    && echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections \
    && apt-get install -y mysql-server

# WORKDIR /venv

# COPY start.sh /venv

# RUN chmod a+x /venv/*

# ENTRYPOINT ["/venv/start.sh"]

# COPY start.sh /start.sh
# RUN chmod a+x /start.sh
# ENTRYPOINT [ "/start.sh" ]

EXPOSE 80