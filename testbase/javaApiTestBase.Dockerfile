FROM fedora:32
LABEL btang.image.authors="Baochang Tang"
RUN dnf -y upgrade --refresh
RUN dnf -y install wget
RUN dnf -y install vim
#sudo alternatives --config java
RUN dnf -y install maven
RUN echo export JAVA_HOME=$(readlink -f /usr/bin/javac | sed s:/bin/javac::) >> ~/.profile
RUN cat ~/.profile
RUN source ~/.profile
run dnf install -y git
