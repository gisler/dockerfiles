FROM rocker/geospatial:4.0.2
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update                                                               && \
  apt-get install apt-utils -y                                                   && \
  apt-get install nano -y                                                        && \
  R -e 'install.packages(                                                           \
    "DTSg",                                                                         \
    repos = "https://mran.microsoft.com/snapshot/2020-07-16",                       \
    dependencies = TRUE                                                             \
  )'                                                                             && \
  sudo -u rstudio git config --global user.name gisler                           && \
  sudo -u rstudio git config --global user.email gisler@users.noreply.github.com && \
  sudo -u rstudio git config --global core.editor nano                           && \
  sudo -u rstudio git config --global credential.helper 'cache --timeout=28800'  && \
  rm /home/rstudio/.config/rstudio/rstudio-prefs.json                            && \
  mkdir /etc/rstudio/keybindings
COPY rstudio_bindings.json /etc/rstudio/keybindings/rstudio_bindings.json
COPY rstudio-prefs.json    /etc/rstudio/rstudio-prefs.json
