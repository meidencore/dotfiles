# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root $PWD

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "my-awesome-window"

# Split window into panes.
split_h 35
split_v 50

# Run commands.
#run_cmd "top"     # runs in active pane
select_pane 0
run_cmd "nvim ."

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

#c Set active pane.
