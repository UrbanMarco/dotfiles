#!/usr/bin/env zsh

function reset_space() {
    local prg=${1}
    local lbl=${2}
    local sps=${3}
    yabai -m rule --add app="$prg" space="$sps" label="$lbl" 
    yabai -m rule --apply
    yabai -m rule --remove $lbl
    yabai -m rule --apply
}

reset_space "^Firefox$" "firefox" "^1"
reset_space "^Slack$" "slack" "^5"
reset_space "^Code$" "vscode" "^6"
reset_space "^Spotify$" "spotify" "^8"
