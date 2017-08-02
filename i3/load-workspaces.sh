i3-msg 'workspace "3:web"; exec firefox;'
i3-msg 'workspace "2:dev"; append_layout /home/drew/.config/i3/workspace-dev.json;'
i3-msg 'workspace "2:dev"; exec atom ~/code/project1; exec firefox; exec i3-sensible-terminal -cd /home/drew/code/project1;' 
