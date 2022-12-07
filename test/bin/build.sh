export NODE_OPTIONS=--max_old_space_size=4096
cd ../
ng build currentapp
ng build login --base-href /login/ --deploy-url /login/
