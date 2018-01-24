#!/usr/bin/env bash
scrot -s '/tmp/screenshot.png' -e 'xclip -selection c -t image/png $f'
