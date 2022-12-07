#!/bin/sh
CWD="$(pwd)"
cd $CWD/../projects/ngx-mc2/
ng build
ng build --watch &
while inotifywait -e modify -e create -e delete -e delete_self -r $CWD/../dist/; do
    if [ -d "$CWD/../dist/ngx-mc2/" ]; then
        sleep 10s
        cd  $CWD/../dist/ngx-mc2/
        yarn unlink 
        yarn link
        cd $CWD/../../ogust-ng/
        yarn unlink ngx-mc2
        yarn link ngx-mc2 
        ng cache clean 
        ng build ogust-app --configuration development --deploy-url /ogust-app/ &&
        ng build ogust-components --configuration development --deploy-url /ogust-components/
    fi
done