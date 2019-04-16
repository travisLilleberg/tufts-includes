#!/bin/bash

# @file
# Goes to a specific site

source ~/.bash_functions/msgs

function go {
  site_loc=${HOME}/Sites
  if [ -d ${site_loc}/${1} ]; then
    cd ${site_loc}/${1}
  else
    case "${1}" in
      "bin")
        cd ${HOME}/bin
        ;;
      "func")
        cd ${HOME}/.bash_functions
        ;;
      "trv")
        cd ${site_loc}/tufts-image-library
        ;;
      "nnv")
        cd ${site_loc}/tufts-election
        ;;
      "tdn")
        cd ${site_loc}/tufts_data_normalization
        ;;
      "mod")
        cd ${site_loc}/tufts_models
        ;;
      "mc")
        cd ${site_loc}/marvel_companion
        ;;
      "tc")
        cd ${site_loc}/tufts-curation
        ;;
      "ts")
        cd ${site_loc}/tufts-spotlight
        ;;
      "ntdl")
        cd ${site_loc}/tdl_on_hyrax
        ;;
      "tom")
        cd /Library/Tomcat
        ;;
      "solr")
        cd /usr/local/solr
        ;;
      *)
        bad_msg "${1} is not a valid sitename."
        ;;
    esac
  fi

}

