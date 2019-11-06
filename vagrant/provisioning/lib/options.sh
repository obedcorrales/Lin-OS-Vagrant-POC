#! /usr/bin/env bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
  case $1 in
    'd'|'defaults')
      bin/apply_defaults;;
    'p'|'provisionAsRoot')
      bin/apply_defaults
      bin/install_root_packages;;
    's'|'setupAsVagrant')
      bin/setup_vagrant_environment;;
    'u')
      bin/configure_users;;
    'f')
      bin/finalize_setup;;
    'r')
      shutdown -r now;;
    # 'i')
    #   bin/apply_defaults
    #   bin/install_root_packages
    #   bin/configure_users
    #   bin/finalize_setup
    #   shutdown -r now;;
    'q');;
    *)
      printf "ERROR: Invalid option.\n";;
  esac
}
export -f process_option