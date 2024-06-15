FROM mysql:5.7

ENV MYSQL_DATABASE=BANCO_DADOS_IT_TALENT
ENV MYSQL_ROOT_PASSWORD=your_password

COPY dump.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
