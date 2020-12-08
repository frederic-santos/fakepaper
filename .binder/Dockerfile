FROM rocker/binder:4.0.2
LABEL maintainer='Fred Santos'

ENV NB_USER rstudio
ENV NB_UID 1000
ENV HOME /home/rstudio
WORKDIR ${HOME}

USER ${NB_USER}
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}

USER ${NB_USER}
RUN wget https://github.com/frederic-santos/fakepaper/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-12-01/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
