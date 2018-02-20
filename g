#!/bin/bash

# @file
# Quickly navigates around rails sites.
# Uses get_site

function g {
  root=${HOME}/Sites/$(get_site)

  case "${1}" in
    "a")
      target_dir=$root/app
      ;;
    "m")
      case "${2}" in
        "c")
          target_dir=$root/app/models/concerns
          ;;
        *)
          target_dir=$root/app/models
          ;;
      esac
      ;;
    "c")
      case "${2}" in
        "c")
          target_dir=$root/app/controllers/concerns
          ;;
        *)
          target_dir=$root/app/controllers
          ;;
      esac
      ;;
    "v")
      case "${2}" in
        "c")
          target_dir=$root/app/views/concerns
          ;;
        *)
          target_dir=$root/app/views
          ;;
      esac
      ;;
    "h")
      target_dir=$root/app/helpers
      ;;
    "j")
      target_dir=$root/app/assets/javascripts
      ;;
    "cs")
      target_dir=$root/app/assets/stylesheets
      ;;
    "i")
      target_dir=$root/app/assets/images
      ;;
    "l")
      target_dir=$root/lib
      ;;
    "t")
      target_dir=$root/lib/tasks
      ;;
    "s")
      target_dir=$root/app/services
      ;;
    "co")
      target_dir=$root/config
      ;;
    "ve")
      case "${2}" in
        "j")
          target_dir=$root/vendor/assets/javascripts
        ;;
        "c")
          target_dir=$root/vendor/assets/stylesheets
        ;;
        "i")
          target_dir=$root/vendor/assets/images
        ;;
        *)
          target_dir=$root/vendor
        ;;
      esac
      ;;
    *)
      target_dir=$root
      ;;
  esac

  cd $target_dir
}

