FROM rocker/tidyverse
LABEL maintainer="root"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y git-core \
	libcurl4-openssl-dev \
	libssl-dev \
	libxml2-dev \
	make
RUN ["install2.r", "assertthat", "backports", "bindr", "bindrcpp", "broom", "cellranger", "cli", "colorspace", "crayon", "curl", "dplyr", "forcats", "formatR", "futile.logger", "futile.options", "generics", "ggplot2", "gtable", "haven", "hms", "httr", "jsonlite", "lambda.r", "lattice", "lazyeval", "lubridate", "magrittr", "modelr", "munsell", "nlme", "pillar", "pkgconfig", "plyr", "purrr", "R6", "Rcpp", "readr", "readxl", "remotes", "rlang", "rstudioapi", "rvest", "scales", "semver", "stringi", "stringr", "tibble", "tidyr", "tidyselect", "tidyverse", "withr", "xml2"]
RUN ["installGithub.r", "richfitz/stevedore@c9531428df052eaf8185d9235f2f8db5b2a6008a", "tidyverse/glue@35c61e93f6844c757672574972e59920fb9f0cf6"]
WORKDIR /payload/
CMD ["R"]
