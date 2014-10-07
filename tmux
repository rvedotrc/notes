c-b ?	show key bindings
c-b :	command mode

c-b c	create new window

	[0] 0:eximwin- 1:bash*
	
	[0] = session
	    0:eximwin, 1:bash = windows
	    * = active
	    - = previous active
	    a window called [tmux] is temporary command output

c-b $	rename the /session/ (set of windows etc)
c-b ,	rename the window

SESSION CONTROL
a server has one or more sessions.
each session has one or more windows.
	new-session		create a new session
$	rename-session		rename a session
s	choose-session		interactive choose session
(	switch-client -p	previous session
)	switch-client -n	next session
	list-sessions (ls)	list sessions

WINDOW CONTROL
a window belongs to a session.
each window has one or more panes.
c	new-window		create a new window
w	choose-window		interactive choose window
n	next-window		next window
p	previous-window		previous window
l	last-window		last (the previously selected) window, as indicated by "-" in status line
	list-windows (lsw)	list windows in this session
	list-windows -a		list windows in all sessions

c-b "	new pane, split down
c-b %	new pane, split right
c-b o	next pane
c-b <arrow>	move to another pane






ls				- list sessions
attach-session -t ...		- switch sessions
kill-session -t ...		- kill a session



tmux:
  session...
  session...
  session...
     window...
     window...
     window...
       pane... (pty)

