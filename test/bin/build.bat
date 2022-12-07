SET NODE_OPTIONS=--max_old_space_size=4096
cd ../
start ng build login --base-href /login/ --deploy-url /login/
start ng build currentapp