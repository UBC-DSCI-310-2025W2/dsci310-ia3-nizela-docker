FROM rocker/rstudio:4.4.2

RUN Rscript -e 'install.packages("remotes", repos ="https://cloud.r-project.org")'

RUN Rscript -e 'remotes::install_version("ggplot2", version="3.5.2", repos="https://cloud.r-project.org")'

RUN Rscript -e 'library(ggplot2); print(packageVersion("ggplot2"))'

RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.0", repos="https://cloud.r-project.org")'

RUN Rscript -e 'library(cowsay); say("Docker is working and running ggplot2 Version 3.5.2 and Cowsay Version 0.8.0!")'

# Trigger GitHub Action workflow again
