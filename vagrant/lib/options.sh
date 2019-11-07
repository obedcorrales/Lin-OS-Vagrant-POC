#! /usr/bin/env bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
  case $1 in
    'provisionAsRoot')
      bin/apply_defaults
      bin/install_root_packages;;
    'setupAsVagrant')
      bin/setup_vagrant_environment
      bin/update_node;;
    'n'|'N')
      bin/update_node;;
    # 'u')
    #   bin/configure_users;;
    # 'f')
    #   bin/finalize_setup;;
    'r'|'R')
      shutdown -r now;;
    'q'|'Q');;
    *)
      printf "ERROR: Invalid option.\n";;
  esac
}
export -f process_option