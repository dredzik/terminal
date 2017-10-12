#!/usr/bin/bash

export LC_ALL=pl_PL.UTF-8;
export LANG=pl_PL.UTF-8;

export HISTSIZE=100000;

# Ctrl+W removes characters up to a slash
stty werase undef;
bind "\C-w:unix-filename-rubout";
