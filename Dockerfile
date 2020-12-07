# get the base image, the rocker/verse has R, RStudio and pandoc
FROM rocker/verse:4.0.3

# required
MAINTAINER Frédéric Santos <your_email@somewhere.com>

COPY . /fakepaper

# go into the repo directory
RUN . /etc/environment \
	# Install linux depedendencies here
	# e.g. need this for ggforce::geom_sina
	&& sudo apt-get update \
	&& sudo apt-get install -y \
	libudunits2-dev
	latexmk \
	texlive \
	texlive-fonts-extra \
	texlive-publishers \
	# build this compendium package
	&& R -e "devtools::install('/fakepaper', dep=TRUE)"
