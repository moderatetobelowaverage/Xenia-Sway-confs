{
  setting=$(tlpctl get)

  if [[ $setting == "performance" ]]; then
    tlpctl balanced

  elif [[ $setting == "balanced" ]]; then
    tlpctl power-saver

  elif [[ $setting == "power-saver" ]]; then
    tlpctl performance

  fi

  newsetting=$(tlpctl get)
  echo $newsetting
  notify-send -a $newsetting "Power Setting" $newsetting
}
