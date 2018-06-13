#!/usr/bin/env bash
sleep 0.2; scrot -s '/tmp/screenshot.png' -e 'xclip -selection c -t image/png $f'

