echo "$light_blue Tools installation summary$reset_colour"
echo ""
counter=0
for file in $tools; do
  if [ -e ./scripts/tools/"$file"_verify.sh ]; then
    ((counter += 1))
    echo "$light_green $counter) $reset_colour"
    source ./scripts/tools/"$file"_verify.sh
    echo ""
  else
    ((counter += 1))
    echo "$red $counter)"
    echo " Verification script not found for: $file. $reset_colour"
    echo ""
  fi
done