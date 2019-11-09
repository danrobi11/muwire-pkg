#!/bin/bash

if [ ! -d ${HOME}/.MuWire ]; then
    mkdir ${HOME}/.MuWire
    cp -R ${HERE}/certificates ${HOME}/.MuWire
fi
cd ${HOME}/.MuWire
${HERE}/jre/bin/java -Xmx512m -cp "${HERE}/jbigi.jar:${HERE}/MuWire.jar:${HERE}/unnamed.jar" -DembeddedRouter=true -DupdateType=appimage -Djava.util.logging.config.file=${HERE}/1_logging.properties com.muwire.gui.Launcher

