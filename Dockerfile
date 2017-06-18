FROM centos:7

# NGINX
ADD etc/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx
RUN yum -y clean all

# forward request logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
