# start from the rocker/r-ver:3.5.0 image
FROM rocker/r-ver

# install the linux libraries needed for plumber
RUN apt-get update 

RUN apt-get install -y libssl-dev libcurl4-gnutls-dev

# install plumber
RUN R -e "install.packages('plumber')"
RUN R -e "if (!require(devtools)) install.packages('devtools')"
RUN R -e "devtools::install_github('LuizFelipeNeves/receita-cnpj-lib')"

# copy everything from the current directory into the container
COPY / /

# open port 80 to traffic
EXPOSE 80

# when the container starts, start the main.R script
ENTRYPOINT ["Rscript", "main.R"]