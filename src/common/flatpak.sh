#!/bin/bash

FLATPAK_INSTALL_CMD='flatpak install --user -y'

function f_flatpak_common() {
    f_out "Installing flathub"

    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

function f_obsidian_main() {
    f_check_prog "flatpak"

    f_out "Installing Obsidian"

    $FLATPAK_INSTALL_CMD flathub md.obsidian.Obsidian
}

function f_clion_main() {
    f_check_prog "flatpak"

    f_out "Installing CLion"

    $FLATPAK_INSTALL_CMD flathub com.jetbrains.CLion
}

function f_obs_main() {
    f_check_prog "flatpak"

    f_out "Installing OBS Studio"

    $FLATPAK_INSTALL_CMD flathub com.obsproject.Studio
}

function f_zulip_main() {
    f_check_prog "flatpak"

    f_out "Installing Zulip"

    $FLATPAK_INSTALL_CMD flathub com.zulip.Zulip
}

function f_git_kraken_main() {
    f_check_prog "flatpak"

    f_out "Installing GitKraken"

    $FLATPAK_INSTALL_CMD flathub com.axosoft.GitKraken
}

function f_discord_main() {
    f_check_prog "flatpak"

    f_out "Installing Discord"

    $FLATPAK_INSTALL_CMD flathub com.discordapp.Discord
}

function f_dropbox_main() {
    f_check_prog "flatpak"

    f_out "Installing Dropbox"

    $FLATPAK_INSTALL_CMD flathub com.dropbox.Client
}

function f_slack_main() {
    f_check_prog "flatpak"

    f_out "Installing Slack"

    $FLATPAK_INSTALL_CMD flathub com.slack.Slack
}

function f_code_main() {
    f_check_prog "flatpak"

    f_out "Installing Visual Studio Code"

    $FLATPAK_INSTALL_CMD flathub com.visualstudio.code.oss
}

function f_signal_main() {
    f_check_prog "flatpak"

    f_out "Installing Signal"

    $FLATPAK_INSTALL_CMD flathub org.signal.Signal
}

function f_telegram_main() {
    f_check_prog "flatpak"

    f_out "Installing Telegram"

    $FLATPAK_INSTALL_CMD flathub org.telegram.desktop
}

function f_riot_main() {
    f_check_prog "flatpak"

    f_out "Installing Riot"

    $FLATPAK_INSTALL_CMD flathub im.riot.Riot
}

function f_flatseal_main() {
    f_check_prog "flatpak"

    f_out "Installing Flatseal"

   $FLATPAK_INSTALL_CMD flathub com.github.tchx84.Flatseal
}

function f_flatpak_apps_main() {
    local _FP_APPS

    _FP_APPS=$(dialog --checklist "Which Flatpak Apps?" 400 400 12 \
       flatseal "Flatseal" on \
       discord "Discord" on \
       signal "Signal" on \
       telegram "Telegram" on \
       whatsappqt "WhatsAppQT" on \
       zulip "Zulip" on \
       slack "Slack" off \
       git_kraken "GitKraken" on \
       code "Visual Studio Code" off \
       clion "CLion" on \
       obsidian "Obsidian" on \
       obs "OBS Studio" on \
       dropbox "Dropbox" off \
        --output-fd 1)
    clear

    readonly _FP_APPS

    for APP in ${_FP_APPS[@]}; do
        f_${APP}_main
    done
}
