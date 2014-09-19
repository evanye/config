# use UTF8
    set -g utf8
    set-window-option -g utf8 on

    # make tmux display things in 256 colors
    set -g default-terminal "screen-256color"

    # set scrollback history to 10000 (10k)
    set -g history-limit 10000

    # set Ctrl-a as the default prefix key combination
    # and unbind C-b to free it up
    set -g prefix C-a
    unbind C-b

    # use send-prefix to pass C-a through to application
    bind C-a send-prefix

    # shorten command delay
    set -sg escape-time 1

    # enable mouse scrolling
    set-window-option -g mode-mouse on

    # set window and pane index to 1 (0 by default)
    set-option -g base-index 1
    setw -g pane-base-index 1

    # reload ~/.tmux.conf using PREFIX r
    bind r source-file ~/.tmux.conf \; display "Reloaded!"

    # use PREFIX | to split window horizontally and PREFIX - to split vertically
    bind | split-window -h
    bind - split-window -v

    # Make the current window the first window
    bind T swap-window -t 1

    # map Vi movement keys as pane movement keys
    bind h select-pane -L
    bind j select-pane -D
    bind k select-pane -U
    bind l select-pane -R

    # and use C-h and C-l to cycle thru panes
    bind -r C-h select-window -t :-
    bind -r C-l select-window -t :+

    # resize panes using PREFIX H, J, K, L
    bind H resize-pane -L 5
    bind J resize-pane -D 5
    bind K resize-pane -U 5
    bind L resize-pane -R 5

    # ---------------------
    # Copy & Paste
    # ---------------------
    # provide access to the clipboard for pbpaste, pbcopy
    #set-option -g default-command "reattach-to-user-namespace -l zsh"
    #set-window-option -g automatic-rename on

    # use vim keybindings in copy mode
    setw -g mode-keys vi

    # setup 'v' to begin selection as in Vim
    bind-key -t vi-copy v begin-selection
    bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

    # update default binding of 'Enter' to also use copy-pipe
    unbind -t vi-copy Enter
    bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

    bind y run 'tmux save-buffer - | reattach-to-user-namespace pbcopy '
    bind C-y run 'tmux save-buffer - | reattach-to-user-namespace pbcopy '

    # ----------------------
    # set some pretty colors
    # ----------------------
    # set pane colors - hilight the active pane
    set-option -g pane-border-fg colour235 #base02
    set-option -g pane-active-border-fg colour240 #base01

    # colorize messages in the command line
    set-option -g message-bg black #base02
    set-option -g message-fg brightred #orange

    # Smart pane switching with awareness of vim splits
    bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|vim?)(diff)?$' && tmux send-keys C-h) || tmux select-pane -L"
    bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|vim?)(diff)?$' && tmux send-keys C-j) || tmux select-pane -D"
    bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|vim?)(diff)?$' && tmux send-keys C-k) || tmux select-pane -U"
    bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|vim?)(diff)?$' && tmux send-keys C-l) || tmux select-pane -R"
    bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|vim?)(diff)?$' && tmux send-keys 'C-\\') || tmux select-pane -l"

    # Rebind <prefix> C-l as the clear screen key
    bind C-l send-keys 'C-l'

    # fix clipboard in tmux
    set-option -g default-command "reattach-to-user-namespace -l zsh"
