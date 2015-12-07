FROM tutum/lamp:latest
RUN apt-get update && apt-get install curl unzip graphviz -y
RUN cd /tmp && curl --remote-name http://freefr.dl.sourceforge.net/project/itop/itop/2.2.0/iTop-2.2.0-2459.zip && unzip /tmp/iTop-2.2.0-2459.zip && rm /tmp/iTop-2.2.0-2459.zip
RUN rm -fr /app && cp -rf /tmp/web /app && mkdir -p /app/log && mkdir -p /app/env-production && mkdir -p /app/conf && mkdir -p /app/data
RUN chmod 777 /app/log && chmod 777 /app/conf && chmod 777 /app/env-production && chmod 777 /app/data
EXPOSE 80 3306
CMD ["/run.sh"]