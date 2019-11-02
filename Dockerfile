FROM hiroyukionaka/pandoc-lualatex-ja:2.7
MAINTAINER hiroyuki@fieldnotes.jp

ENV DEBIAN_FRONTEND=noninteractive

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
  apt-get update -y && apt-get install -y software-properties-common && \
  add-apt-repository universe && apt-get update -y && \
  apt-get install -y  fonts-liberation libappindicator3-1  libappindicator3-1  libasound2 libatk-bridge2.0-0  libatk1.0-0 libatspi2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libnspr4  libnss3  libpango-1.0-0 libpangocairo-1.0-0 lsb-release && \
  dpkg -i google-chrome-stable_current_amd64.deb && apt-get install -y nodejs npm  && \
  npm install -g vivliostyle-savepdf   && \
  apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove && \
  rm -f google-chrome-stable_current_amd64.deb
