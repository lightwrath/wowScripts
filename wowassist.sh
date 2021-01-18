#!/bin/bash
window=$(./grabc -W)
echo $window

while [ true ]; do
  [ $(./grabc -w $window -l +30+30) = "#00ff00" ] && xdotool key 0 && echo "Healthstone/Potion" && sleep 0.1s && continue
  [ $(./grabc -w $window -l +90+30) = "#00ff00" ] && xdotool key 9 && echo "Natures Swiftness" && sleep 0.1s && continue
  [ $(./grabc -w $window -l +120+30) = "#00ff00" ] && xdotool key 8 && echo "Lifebloom" && sleep 0.1s && continue
done
