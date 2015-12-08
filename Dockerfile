# Dockerfile für Mysql Zugrife unter Perl
# acdaic4v 13.08.2015
# Zunächst zum Testen
FROM acdaic4v/ubuntu-perl-base:v20121208
MAINTAINER acdaic4v <acdaic4v@sloervi.de>

# Binaries für Mysql
RUN apt-get update && apt-get install -y mysql-client libmysqlclient-dev

# Perl Module für Mysql
RUN cpanm DBD \
&&  cpanm DBD::mysql \
&&  cpanm DBI 

# CPAN- Verzeichnis wieder aufräumen
RUN rm -rf .cpanm

