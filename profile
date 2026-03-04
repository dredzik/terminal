#!/usr/bin/bash

# Ctrl+W removes characters up to a slash
stty werase undef;
bind "\C-w:unix-filename-rubout";
