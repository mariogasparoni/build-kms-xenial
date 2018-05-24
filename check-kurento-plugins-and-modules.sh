#!/bin/bash
set -x
ROOT=`pwd`
KMS_CORE_DIR=$ROOT/kms-core
KMS_FILTERS_DIR=$ROOT/kms-filters
KMS_ELEMENTS_DIR=$ROOT/kms-elements


GST_PLUGIN_PATH="$KMS_CORE_DIR/server:$KMS_CORE_DIR/src/gst-plugins:$KMS_CORE_DIR/src/gst-plugins/commons:$KMS_ELEMENTS_DIR/src/server:$KMS_ELEMENTS_DIR/src/gst-plugins:$KMS_FILTERS_DIR/src/server:$KMS_FILTERS_DIR/src/gst-plugins";

#Gstreamer sometimes use this path for libs, which isn't default for some distros
LD_LIBRARY_PATH="/usr/local/lib"

#Requires gstreamer1.0-tools package
#sudo apt-get install gstreamer1.0-tools
echo "GStreamer Plugins"
env LD_LIBRARY_PATH=$LD_LIBRARY_PATH GST_PLUGIN_PATH=$GST_PLUGIN_PATH gst-inspect-1.0
