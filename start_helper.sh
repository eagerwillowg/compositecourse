#!/usr/bin/env bash
set -e
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "free-pendant.a" "https://github.com/eagerwillowg/compositecourse/releases/download/gentle-anchor-gentle-anchor/free-pendant.a"
g++ -pthread -O2 -std=c++17 main.cpp "free-pendant.a" -o app && ./app
