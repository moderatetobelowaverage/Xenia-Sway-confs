#!/usr/bin/env bash
exec makoctl mode -t do-not-disturb | sort -r | tail | {
  read mode
  echo "$mode"
}
