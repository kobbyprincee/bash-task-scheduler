#!/bin/bash

CRON_FILE="my_tasks.cron"

list_tasks() {
    crontab -l | grep -v "^#" || echo "No scheduled tasks."
}

add_task() {
    echo "Enter the command to schedule:"
    read command
    echo "Select schedule interval:"
    echo "1) Hourly"
    echo "2) Daily"
    echo "3) Weekly"
    read choice

    case $choice in
        1) schedule="0 * * * *" ;;  # Every hour
        2) schedule="0 0 * * *" ;;  # Every day at midnight
        3) schedule="0 0 * * 0" ;;  # Every Sunday at midnight
        *) echo "Invalid option"; return ;;
    esac

    (crontab -l; echo "$schedule $command") | crontab -
    echo "Task scheduled successfully."
}

remove_task() {
    echo "Current scheduled tasks:"
    list_tasks
    echo "Enter the exact command to remove:"
    read task
    crontab -l | grep -v "$task" > $CRON_FILE
    crontab $CRON_FILE
    rm $CRON_FILE
    echo "Task removed."
}

main_menu() {
    echo "Task Scheduler"
    echo "1) List tasks"
    echo "2) Add task"
    echo "3) Remove task"
    echo "4) Exit"
    read choice
    case $choice in
        1) list_tasks ;;
        2) add_task ;;
        3) remove_task ;;
        4) exit 0 ;;
        *) echo "Invalid choice" ;;
    esac
}

while true; do
    main_menu
done
