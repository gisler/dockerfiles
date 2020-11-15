FROM rocker/geospatial:4.0.2
ARG DEBIAN_FRONTEND=noninteractive
ARG USERS_PASSWORD
COPY users users
COPY rstudio-prefs.json    /etc/rstudio/rstudio-prefs.json
COPY rstudio_bindings.json /etc/rstudio/keybindings/rstudio_bindings.json
RUN apt-get update                                                   && \
  apt-get install apt-utils --no-install-recommends -y               && \
  apt-get install p7zip-full ne --no-install-recommends -y           && \
  Rscript -e 'install.packages(                                         \
    "DTSg",                                                             \
    repos = "https://mran.microsoft.com/snapshot/2020-07-16",           \
    dependencies = TRUE                                                 \
  )'                                                                 && \
  7z e -p$USERS_PASSWORD users/users.7z -ousers                      && \
  while read -r user pw;                                                \
  do                                                                    \
    useradd -m -k users/$user -p $(openssl passwd -crypt $pw) $user;    \
  done < users/users                                                 && \
  rm -r users
