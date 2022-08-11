#!/usr/bin/env bash
# @file git_example_wrapper.sh
# Example parser script for an override for git
# @author Alister Lewis-Bowen <alister@lewis-bowen.org>

# shellcheck disable=SC2034
CLI_TO_WRAP=git

squidward() {
  cat <<"EOT"
        .--'''''''''--.
     .'      .---.      '.
    /    .-----------.    \
   /        .-----.        \
   |       .-.   .-.       |
   |      /   \ /   \      |
    \    | .-. | .-. |    /
     '-._| | | | | | |_.-'
         | '-' | '-' |
          \___/ \___/
       _.-'  /   \  `-._
     .' _.--|     |--._ '.
     ' _...-|     |-..._ '
            |     |
            '.___.'
EOT
}

# Routes

case "$@" in
    'squid me')
      squidward
      exit
      ;;
esac