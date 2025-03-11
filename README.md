A lightweight and efficient task scheduler written in Bash, designed to automate and manage recurring tasks directly from your terminal. This script allows you to schedule, list, and remove tasks with ease, making it perfect for automating routine operations on Unix-based systems.
Features

    Simple Scheduling: Schedule tasks using cron-like syntax.

    Task Management: Add, list, and remove tasks effortlessly.

    Lightweight: No dependencies, just pure Bash.

    Customizable: Easily modify the script to fit your needs.

    Logging: Optional logging for task execution history.

Usage

    Add a Task:
    bash
    Copy

    ./task_scheduler.sh add "*/5 * * * * /path/to/your/script.sh"

    List Scheduled Tasks:
    bash
    Copy

    ./task_scheduler.sh list

    Remove a Task:
    bash
    Copy

    ./task_scheduler.sh remove 1

Installation

    Clone the repository:
    bash
    Copy

    git clone https://github.com/kobbyprince/bash-task-scheduler.git

    Make the script executable:
    bash
    Copy

    chmod +x task_scheduler.sh

Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve the script.
License

This project is licensed under the MIT License. See the LICENSE file for details.

Automate your workflow with this simple yet powerful Bash task scheduler! 🚀
New chat
