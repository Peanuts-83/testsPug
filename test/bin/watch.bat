SET NODE_OPTIONS=--max_old_space_size=4096
cd ../
start ng build login --base-href /login/ --deploy-url /login/ --watch --aot=false &
start ng build currentapp --watch --aot=false