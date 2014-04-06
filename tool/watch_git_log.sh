#!/bin/bash


function watch_dir() {
    TARGET_DIR=$1
    while true
    do
        #/usr/bin/inotifywait -e modify ${TARGET_DIR}/.git/HEAD  --format "%T %e %w" --timefmt "%Y-%m-%d %H:%M"
        /usr/bin/inotifywait -e modify ${TARGET_DIR}/.git/HEAD >/dev/null 2>&1
        date "+%Y/%m/%d %H:%M:%S" 2>/dev/null |perl -pe 's/\n/ /' >> /tmp/git_`basename $TARGET_DIR`.log
        cat ${TARGET_DIR}/.git/HEAD >> /tmp/git_`basename $TARGET_DIR`.log
    done
}

echo "cmd nohup $0 1>/dev/null 2>&1"
for dir in `find ~/git -mindepth 1 -maxdepth 1 -type d`
do
    watch_dir $dir &
done
