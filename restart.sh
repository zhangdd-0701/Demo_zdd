#!/bin/bash/shell

cmdECHO="echo -e"

####################################
# set svn update
####################################
$cmdECHO "svn update starting... "
svn update $HOME/apps/onl/modules/
$cmdECHO "svn update ended"

$cmdECHO "modules recompiling..."
$cmdECHO "ant onl\n"
newant onl
echo "************************"
appctl ltts-onl-only restart