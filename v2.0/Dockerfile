FROM rocker/geospatial:4.2.2
#FROM ubuntu:20.04
#ENV DEBIAN_FRONTEND=noninteractive

#RUN apt-get update && apt-get install -y gnupg2 ca-certificates
#RUN  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#RUN echo "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" > /etc/apt/sources.list.d/r.list
#RUN apt-get update && apt-get install -y r-base
#RUN apt-get update && apt-get install -y gdal-bin libgdal-dev libssl-dev libcairo2-dev libudunits2-dev pandoc rst2pdf wkhtmltopdf librsvg2-bin
#RUN R -e "install.packages('devtools')"
#RUN R -e "install.packages('wallace')"
RUN R -e "devtools::install_github('wallaceEcoMod/wallace')"
RUN apt update && apt install -y default-jre default-jdk
RUN R CMD javareconf
COPY wallace.R /wallace.R
ENTRYPOINT ["Rscript", "/wallace.R"]
