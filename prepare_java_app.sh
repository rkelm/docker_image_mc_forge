#!/bin/bash
# Create links for all plugins in server directory.
mkdir -p "${SERVER_DIR}/mods"
for filename in ${MODS_JAR_DIR}/*.jar ; do
    test -e "$filename" || continue
    echo prepare_java_app: Linking mod jar $filename to ${SERVER_DIR}/mods/$(basename $filename)
    ln -s "${filename}" "${SERVER_DIR}/mods/$(basename $filename)"
done
