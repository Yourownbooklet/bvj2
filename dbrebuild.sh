read -p "Refresh complete database. Continue (y/n)?" choice
case "$choice" in
  y|Y )
rails db:drop
rails db:create
rails db:migrate
rails db:seed
    ;;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac


