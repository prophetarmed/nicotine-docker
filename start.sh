#!/bin/bash

export GDK_BACKEND=broadway
export BROADWAY_DISPLAY=:5

broadwayd :5 &
sleep 2 && nicotine
