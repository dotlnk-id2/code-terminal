for pid in $(pgrep $1); do
    /usr/bin/taskset -cp $2 $pid
done
