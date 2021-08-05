FROM fedora:34
LABEL btang.image.authors="Baochang Tang"
RUN dnf -y upgrade --refresh
RUN dnf -y install nodejs wget
RUN node --version &&  npm --version
RUN npm install -g mocha
RUN dnf -y install 'dnf-command(config-manager)'
RUN dnf -y install fedora-workstation-repositories
RUN dnf -y config-manager --set-enabled google-chrome
RUN dnf -y install google-chrome-stable
RUN google-chrome-stable --version
RUN dnf -y install chromedriver
RUN dnf -y install Xvfb
#install firefox
WORKDIR /usr/local
RUN wget http://ftp.mozilla.org/pub/firefox/releases/90.0/linux-x86_64/en-US/firefox-90.0.tar.bz2
#RUN unlink /usr/bin/firefox 
RUN dnf install -y bzip2
RUN tar xvjf firefox-90.0.tar.bz2
RUN sudo ln -s /usr/local/firefox/firefox /usr/bin/firefox
RUN dnf install -y cups-libs dbus-glib
WORKDIR ./