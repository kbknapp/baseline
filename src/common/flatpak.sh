#!/bin/bash

FLATPAK_INSTALL_CMD='flatpak install --user -y'

function f_flatpak_common() {
    f_out "Installing flathub"

    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

function f_flatpak_apps_main() {
    f_check_prog "flatpak"

    local _FP_APPS

    _FP_APPS=$(dialog --checklist "Which Flatpak Apps?" 400 400 20 \
       com.github.tchx84.Flatseal "Flatseal" on \
       com.discordapp.Discord "Discord" on \
       org.signal.Signal "Signal" on \
       org.telegram.desktop "Telegram" on \
       io.bit3.WhatsAppQT "WhatsAppQT" on \
       org.zulip.Zulip "Zulip" on \
       com.slack.Slack "Slack" off \
       com.axosoft.GitKraken "GitKraken" on \
       com.visualstudio.code "Visual Studio Code" off \
       com.jetbrains.CLion "CLion" off \
       md.obsidian.Obsidian "Obsidian" on \
       com.obsproject.Studio "OBS Studio" off \
       dropbox "Dropbox" off \
       com.github.alainm23.planner "Planner" off \
       com.todoist.Todoist "Todoist" on \
       im.riot.Riot "Element" on \
       io.github.arunsivaramanneo.GPUViewer "GPU Viewer" off \
       org.gnome.Fractal "Fractal" off \
       net.xmind.ZEN "XMind" on \
       io.github.arunsivaramanneo.GPUViewer "GPU-Viewer" off \
       org.onlyoffice.desktopeditors "ONLYOFFICE" on \
        --output-fd 1)
    clear

    for APP in "${_FP_APPS[@]}"; do
        $FLATPAK_INSTALL_CMD flathub $APP
    done
}

function f_flatpak_main() {
    f_out "Installing and setting up Flatpak"

    $INSTALL_CMD flatpak

    f_flatpak_common
}
