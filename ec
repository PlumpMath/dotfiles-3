#!/bin/sh

# If Emacs gui is running then emacsclient will use the Gui
# If Emacs gui is not running then emacsclient will will start
# a terminal session (not what we want)

# If Emacs.app is not running then start it.
# Emacs.app will start the server with (server-start)
# Wait until Emacs.app has started and then call emacsclient

# open -a Emacs.app "$@"
# open opens files and directories
# -a specifies the app (in this case Emacs.app)
# "$@" are the command line arguments.

EMACS_PROCESS=`pgrep Emacs`
EMACS=`/usr/local/Cellar/emacs-plus/24.5/bin/emacsclient "$@"`
echo $@

if [ $EMACS_PROCESS ] ; then
     # `/usr/local/Cellar/emacs-plus/24.5/bin/emacsclient -n "$@"`
    $EMACS
else
    #Start the emacs gui
    `open -a Emacs.app`
    #wait for 9 seconds
    sleep 9s
    #then call emacsclient
    # `/usr/local/Cellar/emacs-plus/24.5/bin/emacsclient -n "$@"`
    $EMACS
fi


