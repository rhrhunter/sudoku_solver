FROM ubuntu

# Install software
RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y perl

# CPAN
RUN apt-get update && apt-get install -y cpanminus

# GCC Make and stuff
RUN apt-get install -y build-essential
RUN apt-get install -y pkg-config

# Cleanup
# RUN apt-get purge

# Create a directory
RUN mkdir -p /sudoku

# Install perl libs
RUN cpanm --notest -i Moo

# "cd" to that directory
WORKDIR /sudoku
