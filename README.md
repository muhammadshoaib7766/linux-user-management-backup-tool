# Linux User Management & Backup Tool

A practical Bash scripting project that automates basic Linux system administration tasks.

This tool provides an interactive command-line interface for managing Linux users and groups, modifying user shells, and creating compressed backups of directories.

---

## Project Overview

This project was developed as a practical Shell Scripting project for Linux user management and directory backup automation.

The main objective is to perform common system administration tasks through a menu-driven Bash script.

### Features

- Add a new user
- Delete an existing user
- Modify a user's default shell
- Create a new group
- Add a user to a group
- Backup a directory into a ZIP file
- Validate users, groups, and directory paths
- Handle basic errors
- Provide an interactive menu-driven interface

---

## Technologies Used

- Bash Shell Scripting
- Linux
- Git and GitHub
- Linux System Administration Commands
- `useradd`
- `userdel`
- `usermod`
- `groupadd`
- `passwd`
- `zip`

---

## Project Structure

```text
linux-user-management-backup-tool/
│
├── user_management_backup_tool.sh
├── README.md
│
└── screenshots/
    ├── main-menu.png
    ├── add-user.png
    ├── delete-user.png
    ├── modify-user.png
    ├── create-group.png
    ├── add-user-to-group.png
    ├── backup-directory.png
    └── error-handling.png
```

---

# Getting Started

## 1. Clone the Repository

```bash
git clone git@github.com:muhammadshoaib776/linux-user-management-backup-tool.git
```

## 2. Navigate to the Project Directory

```bash
cd linux-user-management-backup-tool
```

## 3. Give Execute Permission

```bash
chmod 774 user_management_backup_tool.sh
```

## 4. Run the Script

```bash
./user_management_backup_tool.sh
```

> **Note:** Some operations require administrator privileges. The script uses `sudo` for commands that modify users and groups.

---

# Main Menu

When the script is executed, the following interactive menu is displayed:

```text
=========================================
   USER MANAGEMENT & BACKUP TOOL
=========================================
1. Add a new user
2. Delete a user
3. Modify a user (Change Shell)
4. Create a new group
5. Add a user to a group
6. Backup a directory
7. Exit
=========================================
```

## Screenshot: Main Menu

Add a screenshot here showing the complete main menu after running the script.

![Main Menu](screenshots/main-menu.png)

---

# 1. Add a New User

This option creates a new Linux user.

The script first checks whether the user already exists. If the user does not exist, it creates the user and a home directory.

Example:

```text
Enter the new username: testuser

Success: User 'testuser' has been added.
```

## Screenshot: Adding a User

Add a screenshot showing:

- Option `1` selected
- Username entered
- Password setup
- Successful user creation

![Add User](screenshots/add-user.png)

---

# 2. Delete a User

This option deletes an existing Linux user and removes their home directory.

Example:

```text
Enter the username to delete: testuser

Success: User 'testuser' and their home directory have been deleted.
```

## Screenshot: Deleting a User

Add a screenshot showing:

- Option `2` selected
- Username entered
- Successful deletion message

![Delete User](screenshots/delete-user.png)

---

# 3. Modify User Shell

This option allows the administrator to change the default shell of an existing user.

Example:

```text
Enter the username to modify: testuser
Enter the new shell path: /bin/bash

Success: User 'testuser' shell changed to /bin/bash.
```

## Screenshot: Changing User Shell

Add a screenshot showing:

- Option `3` selected
- Existing username entered
- New shell path entered
- Successful shell modification

![Modify User](screenshots/modify-user.png)

---

# 4. Create a New Group

This option creates a new Linux group.

The script checks whether the group already exists before creating it.

Example:

```text
Enter the new group name: developers

Success: Group 'developers' has been created.
```

## Screenshot: Creating a Group

Add a screenshot showing:

- Option `4` selected
- Group name entered
- Successful group creation

![Create Group](screenshots/create-group.png)

---

# 5. Add a User to a Group

This option adds an existing user to an existing Linux group.

The script verifies that both the user and group exist before performing the operation.

Example:

```text
Enter the username: testuser
Enter the group name: developers

Success: User 'testuser' added to group 'developers'.
```

## Screenshot: Adding User to a Group

Add a screenshot showing:

- Option `5` selected
- Username entered
- Group name entered
- Successful confirmation message

![Add User to Group](screenshots/add-user-to-group.png)

---

# 6. Backup a Directory

This feature creates a ZIP backup of a selected directory.

The user provides the absolute path of the directory to be backed up. The script automatically creates a backup filename using the directory name and a timestamp.

Example:

```text
Enter the absolute path of the directory to backup:

/home/user/Documents

Starting backup process...

Success: Backup completed!
```

Example backup filename:

```text
Documents_backup_2026-08-27-10-30.zip
```

## Screenshot: Directory Backup

Add a screenshot showing:

- Option `6` selected
- Directory path entered
- Backup process
- Successfully generated ZIP file

![Backup Directory](screenshots/backup-directory.png)

---

# 7. Exit

Selecting option `7` safely exits the program.

Example:

```text
Please select an option (1-7): 7

Exiting the script. Have a great day!
```

---

# Error Handling

The script includes basic validation and error handling.

Examples include:

- User already exists
- User does not exist
- Group already exists
- User or group does not exist
- Invalid directory path
- Invalid menu option

Example:

```text
Error: User 'testuser' already exists.
```

## Screenshot: Error Handling

Add a screenshot showing an error scenario, such as:

- Adding an existing user
- Deleting a non-existing user
- Entering an invalid directory path
- Entering an invalid menu option

![Error Handling](screenshots/error-handling.png)

---

# Requirements

To run this project, you need:

- Linux operating system
- Bash shell
- `sudo` privileges
- `zip` utility

If the `zip` utility is not installed, install it using your Linux distribution's package manager.

### Ubuntu / Debian

```bash
sudo apt install zip
```

### Fedora

```bash
sudo dnf install zip
```

### Arch Linux

```bash
sudo pacman -S zip
```

---

# Concepts Practiced

This project demonstrates practical knowledge of:

- Bash scripting
- Functions
- Conditional statements
- `if` and `else`
- `case` statements
- `while` loops
- User input using `read`
- Linux user management
- Linux group management
- User shell modification
- File and directory validation
- Backup automation
- Error handling
- Linux system administration
- Git and GitHub

---

# Future Improvements

Possible future improvements include:

- Add colored terminal output
- Add confirmation before deleting users
- Add logging functionality
- Add shell path validation
- Add backup destination selection
- Add `.tar.gz` backup support
- Display user information
- Display group members
- Check if required commands are installed
- Add automatic backup cleanup

---

# Author

**Muhammad Shoaib**

GitHub: https://github.com/muhammadshoaib776

---

# License

This project was created for educational and practical learning purposes.

---

If you found this project useful, consider giving it a star!
