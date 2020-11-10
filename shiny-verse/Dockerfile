FROM rocker/shinyverse:4.0.2
ARG DEBIAN_FRONTEND=noninteractive
RUN R -e 'install.packages(                                   \
    "DTSg",                                                   \
    repos = "https://mran.microsoft.com/snapshot/2020-07-16", \
    dependencies = TRUE                                       \
  )'
