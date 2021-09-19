#!/bin/bash

function f_rust_apps_main() {
	# Fedora Deps
	#   sudo dnf install clang llvm llvm-devel cmake pkg-config openssl-devel
	# Ubuntu Deps
	#   sudo apt install clang llvm llvm-dev cmake pkg-config libssl-dev
	#
	# Keep eye on:
	#   xv            `# hex viewer` \
	#
	# Not Working Deps:
	#   sudo apt install libgstreamer1.0-dev
	#   sudo apt install libqt5gstreamer-dev
	#   sudo apt install libncursesw5-dev
	#
	# Not Working:
	#   hunter (=ranger in rust) (missing gstreamer-1.0)
	#   process-viewer (ps gui) (not found)
	#   lolcate-rs (=locate) (rust error)
	#   sear: signed and encrypted archive
	#   snifflue:  tcpdump/wireshark (missing seccomp)

    if [ -e ~/.cargo/env ]; then
        source ~/.cargo/env
    fi
    f_check_prog "cargo"

    f_out "Compiling and installing Rust applications"

    _RUST_WRAPPERS=$(dialog --checklist "Which Rust Wrappers?" 400 400 15 \
	  "sccache" "Cache Build Artifacts" on \
        --output-fd 1)
    clear

    _CARGO_PLUGINS=$(dialog --checklist "Which cargo plugins?" 400 400 19 \
	  "cargo-about"      "more info about deps" on \
	  "cargo-audit"      "Security Notifications" on \
	  "cargo-bloat"      "" on \
    "cargo-bundle-licenses"    "Bundle licenses in one file" on \
	  "cargo-cache"      "" on \
	  "cargo-call-stack" "Generate Call Graphs" on \
	  "cargo-count"      "Count lines of code" off \
	  "cargo-crev"       "Dependency Audit and Review" on \
	  "cargo-deny"       "Dep graph lints" on \
	  "cargo-deps"       "Generate dependency graphs" off \
	  "cargo-diet"       "Minimize Package size with Cargo.toml include/excludes" off \
	  "cargo-edit"       "Edit dependencies from the CLI" on \
	  "cargo-expand"     "Expand macros" on \
	  "cargo-geiger"     "Unsafe statistics about deps" on \
	  "cargo-graph"      "Generate dependency graphs" off \
	  "cargo-license"    "" on \
	  "cargo-lichking"   "Display license info for deps" on \
	  "cargo-llvm-lines" "Lines by LLVIM-IR" on \
	  "cargo-llvm-cov"   "Code Coverage by LLVIM-IR" on \
	  "cargo-modules"    "" off \
	  "cargo-outdated"   "Display out of date dependencies" on \
	  "cargo-sweep"      "Clean out old build artifacts" off \
	  "cargo-tarpaulin"  "Code coverage" on \
	  "cargo-thanks"     "Star your deps" off \
	  "cargo-tree"       "" on \
	  "cargo-udeps"      "Find unused deps" on \
	  "cargo-update"     "Update cargo-install'ed binaries" on \
        --output-fd 1)
    clear

    _RUST_DEV_TOOLS=$(dialog --checklist "Which Rust Dev Tools?" 400 400 15 \
	  "amber"      "Code Search and Replace" on \
	  "bpf-linker" "Linker for eBPF" on \
	  "clog-cli"   "Change Log" on \
	  "git-absorb" "Auto fixup and rebase in git" on \
	  "git-delta"  "A better diff" on \
	  "gitui"      "A TUI for git" on \
	  "just"       "modern make" on \
	  "racer"      "Rust completion support" on \
	  "rusty-tags" "tags support" on \
	  "tokei"      "Fast Line Count" on \
	  "watchexec"  "Run command on file change" on \
        --output-fd 1)
    clear

    _RUST_CORE_TOOLS=$(dialog --checklist "Which Rust core tools?" 400 400 15 \
	  "bat"      "pretty cat" on \
	  "choose"   "An easier cut" on \
	  "cw"       "wc clone" on \
	  "diffr"    "diff clone" on \
	  "exa"      "fancy ls" on \
	  "fd-find"  "modern find" on \
	  "kmon"     "Kernel Modules" on \
	  "lsd"      "fancy ls" on \
	  "procs"    "ps clone" on \
	  "rargs"    "xargs and awk type tool" on \
	  "ripgrep"  "modern grep" on \
	  "rm-improved" "" on   \
	  "runiq"    "uniq clone" on \
	  "sd"       "sed clone" on \
	  "tree-rs"  "tree clone " on \
	  "xcp"      "cp clone" on \
	  "zoxide"   "autojump tool, better cd" on \
        --output-fd 1)
    clear

    _RUST_DISK_TOOLS=$(dialog --checklist "Which Rust disk tools?" 400 400 15 \
	  "dirstat-rs" "" on \
	  "diskus"     "Disk Usage info" on \
	  "du-dust"    "du clone" on \
	  "dua-cli"    "" on \
	  "dutree"     "du clone" on \
	  "tin-summer" "sn: find large files" on \
        --output-fd 1)
    clear

    _RUST_MISC_TOOLS=$(dialog --checklist "Which Rust misc tools?" 400 400 25 \
	  "bandwhich"      "bandwidth monitor" on \
	  "battop"         "Battery Top" on \
	  "bingrep"        "" on \
	  "broot"          "interactive tree" on \
	  "dupe-krill"     "file deduplicator" on \
	  "fastmod"        "find and replace" on \
	  "genact"         "activity generator" off \
	  "gptman"         "" on \
	  "grex"           "regex builder" on \
	  "handlr"         "xdg-utils alternative" on \
	  "hyperfine"      "Benchmarking" on \
	  "mdbook"         "write books in MD" on \
	  "mdcat"          "cat for markdown" on \
	  "miniserve"      "Mini HTTP server" on \
	  "mprober"        "Kernel prob utility" on \
    "navi"           "Shell cheat sheets" on \
	  "nu"             "A nu shell with Powershell Inspiration" on \
	  "pastel"         "Get color info in your terminal" on \
	  "ruplacer"       "find and replace" on \
	  "shellharden"    "Shell Script Lint and Fix" on \
	  "skim"           "fzf clone" on \
	  "starship"       "shell prompt" off \
	  "strace-analyzer" "" on \
	  "tealdeer"       "tldr" on \
	  "toast"          "Build using Docker" on \
	  "topgrade"       "upgrade everything" on \
	  "ttdl"           "todo list" on \
	  "wasm-pack"      "" on \
	  "websocket"      "Build websockets" on \
	  "xcompress"      "Compression utility" on \
	  "zellij"         "tmux like terminal manager" on \
	  "zoxide"         "Auto CD" on \
        --output-fd 1)
    clear

    _RUST_TOP_TOOLS=$(dialog --checklist "Which Rust top-like tools?" 400 400 25 \
	  "bottom"  "top like tui" on \
	  "ytop"    "top like tui" off \
        --output-fd 1)
    clear

    _RUST_DATA_TOOLS=$(dialog --checklist "Which Rust data tools?" 400 400 25 \
	  "hexyl"   "Hex Viewer" on \
	  "hx"      "Hex Viewer" on \
	  "jql"     "json handling" on \
	  "xsv"     "csv handling" on \
        --output-fd 1)
    clear

    _RUST_TOOLS_GIT=$(dialog --checklist "Which Rust from git repos?" 400 400 25 \
	  "getzola/zola"       "static site generator" on \
	  "tonarino/innernet"  "Wireguard manager" on \
        --output-fd 1)
    clear

    cargo install $_RUST_WRAPPERS || true
    # If sccache was installed we need to set the env vars
    # so that all the other cargo-installed and built packages
    # take advantage of it
    if [[ " ${_RUST_WRAPPERS[*]} " =~ " sccache " ]]; then
      export RUSTC_WRAPPER=sccache
    fi
    cargo install $_CARGO_PLUGINS || true
    cargo install $_RUST_DEV_TOOLS || true
    cargo install $_RUST_CORE_TOOLS || true
    cargo install $_RUST_DISK_TOOLS || true
    cargo install $_RUST_MISC_TOOLS || true
    cargo install $_RUST_TOP_TOOLS || true
    cargo install $_RUST_DATA_TOOLS || true

    for TOOL in "${_RUST_TOOLS_GIT[@]}"; do
      cargo install --git https://github.com/${TOOL} || true
    done
}

function f_rust_main {
    f_check_prog "curl"

    f_out "Installing and setting up Rust"

    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source ~/.cargo/env
    rustup default nightly
    rustup component add rust-src
}
