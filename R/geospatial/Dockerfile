FROM rocker/geospatial:4.0.2
ARG DEBIAN_FRONTEND=noninteractive
COPY users users
COPY rstudio-prefs.json    /etc/rstudio/rstudio-prefs.json
COPY rstudio_bindings.json /etc/rstudio/keybindings/rstudio_bindings.json
RUN apt-get update                                                   && \
  apt-get install apt-utils -y                                       && \
  apt-get install ne -y                                              && \
  Rscript -e 'install.packages(                                         \
    "DTSg",                                                             \
    repos = "https://mran.microsoft.com/snapshot/2020-07-16",           \
    dependencies = TRUE                                                 \
  )'                                                                 && \
  while read -r user pw;                                                \
  do                                                                    \
    useradd -m -k users/$user -p $(openssl passwd -crypt $pw) $user;    \
  done < users/users                                                 && \
  rm -r users
