#!/bin/bash
set -e
echo "Fixing APT sources..."
sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y locales
sudo locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

echo "Installing Python dependencies..."
sudo apt-get install -y python3-pip pandoc-citeproc
sudo pip3 install pandocfilters ansi2html

echo "Installing R dependencies..."
mkdir -p /tmp/Rlib
export R_LIBS_USER=/tmp/Rlib
Rscript -e "install.packages(c('bookdown', 'downlit'), repos='https://cloud.r-project.org')"

echo "Rendering Book..."
rm -f book.md
Rscript --vanilla -e 'bookdown::render_book("index.Rmd", encoding = "UTF-8", clean = FALSE)'
