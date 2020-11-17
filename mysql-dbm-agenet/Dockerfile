FROM centos
RUN yum install -y numactl libaio python3 gcc python3-devel net-tools
RUN pip3 install dbm-agent
RUN ln -s /usr/lib64/libtinfo.so.6  /usr/lib64/libtinfo.so.5
CMD ["/usr/sbin/init"]
EXPOSE 8080 3306