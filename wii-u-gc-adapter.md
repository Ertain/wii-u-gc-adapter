% wii-u-gc-adapter(1) Version 0.9 | Documentation on using the Wii U GC Adapter

NAME
====

wii-u-gc-adapter -- enables you to use the Wii U GC Adapter on Linux

SYNOPSIS
======

| **wii-u-gc-adapter** \[**--raw**]

DESCRIPTION
========

This allows a user to use all of the functionality of the Wii U GC Adapter on your favorite
distribution of Linux.  This includes the "click" shoulder buttons and the rumble functionality
of the controllers.

To run this program, the user will need the **uinput** kernel module installed. Usually, this
program is run like a daemon.

Options
-----------

--raw
:      Get raw input from the controllers.

EXAMPLES
======

One way of running *wii-u-gc-adapter* is by forking it to the background, thus freeing your
command line to do other things.  To do this, execute this command:
       wii-u-gc-adapter &

FILES
===

*wii-u-gc-adapter*
:     The binary file which runs the whole thing.

AUTHOR
=====
Michael Lelli
Jason Anderson <JasonA.594 at gmail.com>
