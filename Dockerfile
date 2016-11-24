# Dockerfile für Mysql Zugriffe unter Perl
# acdaic4v 14.06.2016
# Zunächst zum Testen
FROM acdaic4v/ubuntu-perl-base:v20161124
MAINTAINER acdaic4v <acdaic4v@sloervi.de>

# Binaries für Mysql
RUN apt-get update && apt-get install -y mysql-client libmysqlclient-dev

# Perl Module für Mysql
RUN cpanm DBI \
&&  cpanm -f Class::HPLOO::Base \
&&  cpanm -f DBD::mysql \
&&  cpanm -f DBD 

# CPAN- Verzeichnis wieder aufräumen
RUN rm -rf .cpanm

