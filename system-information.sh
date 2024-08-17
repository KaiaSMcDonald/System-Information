#!/bin/bash

# Function to display IP addresses
show_ip_addresses() {
    echo "IP Addresses:"
    ip addr show
    echo
}

# Function to display current user
show_current_user() {
    echo "Current User:"
    whoami
    echo
}

# Function to display CPU information
show_cpu_info() {
    echo "CPU Information:"
    lscpu
    echo
}

# Function to display general system information
show_system_info() {
    echo "System Information:"
    uname -a
    echo
}

# Function to display memory information
show_memory_info() {
    echo "Memory Information:"
    free -h
    echo
}

# Function to display top 5 memory processes
show_top_memory_processes() {
    echo "Top 5 Memory Processes:"
    ps aux --sort=-%mem | head -n 6
    echo
}

# Function to display top 5 CPU processes
show_top_cpu_processes() {
    echo "Top 5 CPU Processes:"
    ps aux --sort=-%cpu | head -n 6
    echo
}

# Function to check network connectivity
check_network_connectivity() {
    echo "Network Connectivity:"
    ping -c 4 google.com
    echo
}

# Main menu loop
while true; do
    echo "Please choose an option:"
    echo "1. IP Addresses"
    echo "2. Current User"
    echo "3. CPU Information"
    echo "4. System Information"
    echo "5. Memory Information"
    echo "6. Top 5 Memory Processes"
    echo "7. Top 5 CPU Processes"
    echo "8. Network Connectivity"
    echo "9. Exit"

    # Prompt user for choice
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    case "$choice" in
        1)
            show_ip_addresses
            ;;
        2)
            show_current_user
            ;;
        3)
            show_cpu_info
            ;;
        4)
            show_system_info
            ;;
        5)
            show_memory_info
            ;;
        6)
            show_top_memory_processes
            ;;
        7)
            show_top_cpu_processes
            ;;
        8)
            check_network_connectivity
            ;;
        9)
            echo "Exiting the script."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a number between 1 and 9."
            echo
            ;;
    esac
done
