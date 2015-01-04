FROM ubuntu:14.04
MAINTAINER Matthew Miner <matthew@matthewminer.com>

COPY clean /usr/local/bin/
RUN chmod 755 /usr/local/bin/clean

# Runs the script once per hour. Change to more or less frequent as desired.
RUN echo "0 * * * * root clean" >> /etc/crontab

CMD ["cron", "-f"]
