FROM rocker/binder:4.0.3
LABEL maintainer='Fred Santos'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN sudo apt-get update \
	&& sudo apt-get install -y \
	texlive-fonts-extra \
	texlive-publishers \
RUN wget https://github.com/frederic-santos/fakepaper/raw/master/DESCRIPTION \
	&& R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-12-01/')); devtools::install_deps(); devtools::install(); tinytex::install_tinytex()"

RUN rm DESCRIPTION.1; exit 0
