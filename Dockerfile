FROM mrkorolik/tomcat:tomcat1.0

RUN mkdir /tmp/WEB-INF

COPY hibernate.cfg.xml /tmp/WEB-INF/hibernate.cfg.xml \ 
    && OMS.war /tmp/OMS.war

RUN jar uf /tmp/OMS.war -C /tmp WEB-INF/hibernate.cfg.xml \
    && mv /tmp/OMS.war /usr/local/tomcat/webapps/ \
    && rm -rf /tmp/WEB-INF
CMD ["catalina.sh", "run"]
