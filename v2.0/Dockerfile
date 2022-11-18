FROM rocker/geospatial:4.2.2

RUN R -e "devtools::install_github('wallaceEcoMod/wallace')"
RUN apt update && apt install -y default-jre default-jdk
RUN R CMD javareconf
COPY wallace.R /wallace.R
ENTRYPOINT ["Rscript", "/wallace.R"]
