FROM generalaardvark/rpi-python35

MAINTAINER Pie <pie@piesweb.co.uk>

RUN apt-get update \
	&& apt-get install -qq -y \
		qt5-default \
		libqt5webkit5-dev \
		build-essential \
		xvfb \
		libxml2-dev \
		libxslt1-dev \
		zlib1g-dev \
	&& pip install dryscrape \
	&& apt-get -qq -y --purge remove \
		qt5-default \
		build-essential \
		zlib1g-dev \
	&& apt-get -qq -y autoremove \
	&& apt-get -qq -y clean \
	&& rm /var/lib/apt/lists/* -Rf

CMD ["/bin/bash"]
