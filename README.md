dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.

This is a copy of my custom dwm 6.0 sources.


Requirements
------------
In order to build dwm you need the Xlib header files.

The `xinitrc` file requires the following:
	* Nitrogen
	* Compton compositor
	* Conky
	* xfce4-panel
	* xfdesktop (optional)

Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Run the install.sh script to install the custom dwm desktop environment:
	
	./install.sh

If you are going to use the default bluegray color scheme it is highly
recommended to also install the bluegray files shipped in the dextra package.


Running dwm
-----------
Run the `startx` command from the console to start dwm.

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
