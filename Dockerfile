FROM cyversevice/rstudio-verse:3.6.2

RUN set -e \
  && apt-get update \
  && apt-get install --no-install-recommends -y \
    jags \
  && rm -rf /var/lib/apt/lists/* \
  && install2.r --error \
    coda \
    rjags \
    nimble \
    pryr \
    gridExtra

RUN cd /home/rstudio/ && git clone https://github.com/Kah5/pecan.git
RUN cd /home/rstudio/pecan && git checkout working
