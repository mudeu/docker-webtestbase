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
RUN dnf -y install java-1.8.0-openjdk.x86_64 
RUN wget https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
RUN java -jar selenium-server-standalone-3.141.59.jar &
RUN dnf -y install Xvfb