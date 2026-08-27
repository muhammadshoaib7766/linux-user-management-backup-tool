#!/bin/bash
# ==============================================================================
# Script Name: User Management and Backup Tool
# Description: Automates user account management and directory backups.
# Author: [Aapka Naam Yahan Likhein]
# ==============================================================================
# Function to display the main menu
show_menu() {
    echo ""
    echo "========================================="
    echo "   USER MANAGEMENT & BACKUP TOOL         "
    echo "========================================="
    echo "1. Add a new user"
    echo "2. Delete a user"
    echo "3. Modify a user (Change Shell)"
    echo "4. Create a new group"
    echo "5. Add a user to a group"
    echo "6. Backup a directory"
    echo "7. Exit"
    echo "========================================="
    read -p "Please select an option (1-7): " choice
    echo ""
}
# 1. Function to add a user
add_user() {
    read -p "Enter the new username: " username
    # Check if user already exists
    if id "$username" &>/dev/null; then
        echo "Error: User '$username' already exists."
    else
        sudo useradd -m "$username"
        sudo passwd "$username"
        echo "Success: User '$username' has been added."
    fi
}
# 2. Function to delete a user
delete_user() {
    read -p "Enter the username to delete: " username
    if id "$username" &>/dev/null; then
        sudo userdel -r "$username"
        echo "Success: User '$username' and their home directory have been deleted."
    else
        echo "Error: User '$username' does not exist."
    fi
}
# 3. Function to modify a user (Change default shell)
modify_user() {
    read -p "Enter the username to modify: " username
    if id "$username" &>/dev/null; then
        read -p "Enter the new shell path (e.g., /bin/bash): " new_shell
        sudo usermod -s "$new_shell" "$username"
        echo "Success: User '$username' shell changed to $new_shell."
    else
        echo "Error: User '$username' does not exist."
    fi
}
# 4. Function to create a group
create_group() {
    read -p "Enter the new group name: " groupname
    if getent group "$groupname" &>/dev/null; then
        echo "Error: Group '$groupname' already exists."
    else
        sudo groupadd "$groupname"
        echo "Success: Group '$groupname' has been created."
    fi
}
# 5. Function to add a user to a group
add_user_to_group() {
    read -p "Enter the username: " username
    read -p "Enter the group name: " groupname
    if id "$username" &>/dev/null && getent group "$groupname" &>/dev/null; then
        sudo usermod -aG "$groupname" "$username"
        echo "Success: User '$username' added to group '$groupname'."
    else
        echo "Error: Either user or group does not exist. Please check again."
    fi
}
# 6. Function to backup a directory
backup_directory() {
    read -p "Enter the absolute path of the directory to backup: " dir_path
    if [ -d "$dir_path" ]; then
        timestamp=$(date '+%Y-%m-%d-%H-%M')
        # Extract folder name for a clean zip file name
        folder_name=$(basename "$dir_path")
        backup_file="${folder_name}_backup_${timestamp}.zip"
        
        echo "Starting backup process..."
        zip -r "$backup_file" "$dir_path"
        echo "Success: Backup completed! File saved as $backup_file"
    else
        echo "Error: Directory '$dir_path' does not exist."
    fi
}
# Main Logic Loop
while true; do
    show_menu
    case $choice in
        1) add_user ;;
        2) delete_user ;;
        3) modify_user ;;
        4) create_group ;;
        5) add_user_to_group ;;
        6) backup_directory ;;
        7) 
            echo "Exiting the script. Have a great day!"
            exit 0 
            ;;
        *) 
            echo "Invalid option. Please select a number between 1 and 7." 
            ;;
    esac
done
