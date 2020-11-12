FROM rocker/shiny-verse:4.0.2
ARG DEBIAN_FRONTEND=noninteractive
RUN Rscript -e 'install.packages(                             \
    "DTSg",                                                   \
    repos = "https://mran.microsoft.com/snapshot/2020-07-16", \
    dependencies = TRUE                                       \
  )'
