FROM ubuntu:jammy


RUN apt update && apt upgrade -y

RUN apt install python3-launchpadlib software-properties-common -y
RUN add-apt-repository 'deb https://ppa.launchpadcontent.net/nicotine-team/stable/ubuntu jammy main'
RUN apt install nicotine python3-mutagen -y

EXPOSE 8085
COPY start.sh /usr/local/bin/startnicotine

RUN useradd nicotine --create-home --shell /bin/bash
USER nicotine
WORKDIR /home/nicotine
CMD ["startnicotine"]
