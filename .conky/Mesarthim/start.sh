#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.conky/Mesarthim/Mesarthim.conf &> /dev/null &
