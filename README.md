# LinuxMacros

This repository provides scripts to create shortcuts for quickly navigating to specific directories in Linux.  
  
To get started, clone the repository using the command:  
    `cd /home/$USER && git clone https://github.com/hou6s/LinuxMacros`   
      
and navigate to the cloned directory with:  
    `cd ~/LinuxMacros`  
      
Next, move the scripts to a directory in your PATH by executing:   
    `sudo mv go.sh /usr/local/bin/go`   
and  
    `sudo mv add_shortcut.sh /usr/local/bin/add_shortcut`.   
      
Make the scripts executable with the commands   
    `sudo chmod +x /usr/local/bin/go`  
and  
    `sudo chmod +x /usr/local/bin/add_shortcut`   
      
To add a new shortcut, run `add_shortcut` and follow the prompts.   
  
To navigate using a shortcut, use `go ShortcutKey`, replacing `ShortcutKey` with your defined key.   
