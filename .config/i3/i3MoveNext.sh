#! /usr/bin/env bash
# sudo apt install jq
wsNext=$(( $( i3-msg -t get_workspaces | jq '.[] | select(.focused).num' ) + $1))
i3-msg move container to workspace $wsNext
i3-msg workspace $wsNext

