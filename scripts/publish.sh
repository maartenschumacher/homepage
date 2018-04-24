#!/bin/bash

elm-package install
elm-make src/homepage.elm --output=build/index.html

ftp -n alfa3045.alfahosting-server.de <<**
user $1 $2
cd html
put build/index.html index.html
bye
**
