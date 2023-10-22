FROM ubuntu:18.04
RUN apt-get update
#RUN apt-get -y install mysql-server
#RUN apt-get -y install sudo
#RUN sudo apt-get -y install systemd
#ENV MYSQL_ROOT_PASSWORD=root
#RUN sudo usermod -d /var/lib/mysql/ mysql
#RUN sudo service mysql start
WORKDIR /opt/java
ADD jdk-11.0.13_linux-x64_bin.tar.gz .
ENV JAVA_HOME /opt/java/jdk-11.0.13
ENV PATH $PATH:$JAVA_HOME/bin
WORKDIR /opt/tomcat
ADD apache-tomcat-9.0.58.tar.gz .
COPY ./*.war /opt/tomcat/apache-tomcat-9.0.58/webapps
COPY tomcat-users.xml /opt/tomcat/apache-tomcat-9.0.58/conf/tomcat-users.xml
COPY context.xml /opt/tomcat/apache-tomcat-9.0.58/webapps/manager/META-INF/context.xml
EXPOSE 8090
#CMD ["mysqld"]
CMD ["/opt/tomcat/apache-tomcat-9.0.58/bin/catalina.sh", "run"]
RUN apt-get update
RUN apt-get install -y mysql-server
RUN apt-get update
ENV MYSQL_HOME /etc/mysql
ENV PATH=$PATH:/etc/mysql
WORKDIR /etc/mysql
#RUN export PATH=$PATH:/etc/mysql
#CMD ["/etc/mysql", "services mysql start"]
RUN service mysql start
#ENV PATH $PATH:$MYSQL_HOME
#RUN mysql
#RUN mysql -e "CREATE USER 'jwt'@'localhost' IDENTIFIED BY 'Password@123';"
#RUN GRANT ALL PRIVILEGES ON *.* TO 'jwt'@'localhost' WITH GRANT OPTION;
#RUN exit
#RUN docker exec mycapstone mysql --user='jwt' --password='Password@123' 
#RUN
