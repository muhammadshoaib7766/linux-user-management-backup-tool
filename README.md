# Linux User Management & Backup Tool

A practical Bash scripting project that automates basic Linux system administration tasks through an interactive command-line interface.

The tool allows users to manage Linux user accounts and groups, modify user shells, and create compressed backups of directories.

## Features

| Option | Function |
|---|---|
| 1 | Add a new user |
| 2 | Delete an existing user |
| 3 | Modify a user's default shell |
| 4 | Create a new group |
| 5 | Add a user to a group |
| 6 | Backup a directory into a ZIP file |
| 7 | Exit the program |

Additional features include:

- User and group existence checks
- Directory path validation
- Timestamped backup filenames
- Basic error handling
- Interactive menu-driven interface

---

## Technologies Used

- Bash Shell Scripting
- Linux
- Git and GitHub
- Linux system administration commands
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

## Getting Started

### 1. Clone the Repository

```bash
git clone git@github.com:muhammadshoaib776/linux-user-management-backup-tool.git
```

### 2. Navigate to the Project Directory

```bash
cd linux-user-management-backup-tool
```

### 3. Give Execute Permission

```bash
chmod 774 user_management_backup_tool.sh
```

### 4. Run the Script

```bash
./user_management_backup_tool.sh
```

> **Note:** Some operations require administrator privileges. The script uses `sudo` for commands that modify users and groups.

---

## Main Menu

When the script is executed, the following menu is displayed:

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

---

## Usage

### Add a New User

Select option `1` and enter a username.

The script checks whether the user already exists. If not, it creates the user along with a home directory and prompts for a password.

Example:

```text
Enter the new username: testuser
Success: User 'testuser' has been added.
```

### Delete a User

Select option `2` and enter the username to delete.

The user account and its home directory are removed.

```text
Enter the username to delete: testuser
Success: User 'testuser' and their home directory have been deleted.
```

### Modify User Shell

Select option `3` to change the default shell of an existing user.

Example:

```text
Enter the username to modify: testuser
Enter the new shell path: /bin/bash
Success: User 'testuser' shell changed to /bin/bash.
```

### Create a New Group

Select option `4` and enter a group name.

```text
Enter the new group name: developers
Success: Group 'developers' has been created.
```

### Add a User to a Group

Select option `5` and provide an existing username and group name.

```text
Enter the username: testuser
Enter the group name: developers
Success: User 'testuser' added to group 'developers'.
```

### Backup a Directory

Select option `6` and enter the absolute path of the directory.

The script creates a ZIP archive with a timestamped filename.

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

### Exit

Select option `7` to safely exit the program.

```text
Exiting the script. Have a great day!
```

---

## Error Handling

The script includes basic validation for common errors, including:

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

---

## Screenshots

Screenshots demonstrating the practical execution of the project can be added to the `screenshots` directory.

Recommended screenshots:

1. Main menu
2. Adding a new user
3. Deleting a user
4. Changing a user's shell
5. Creating a group
6. Adding a user to a group
7. Directory backup
8. Error handling

After uploading the screenshots, they can be displayed in this section.

### Main Menu

```markdown
![Main Menu](screenshots/main-menu.png)
```

### Add User

```markdown
![Add User](screenshots/add-user.png)
```

### Delete User

```markdown
![Delete User](screenshots/delete-user.png)
```

### Modify User Shell

```markdown
![Modify User](screenshots/modify-user.png)
```

### Create Group

```markdown
![Create Group](screenshots/create-group.png)
```

### Add User to Group

```markdown
![Add User to Group](screenshots/add-user-to-group.png)
```

### Backup Directory

```markdown
![Backup Directory](screenshots/backup-directory.png)
```

### Error Handling

```markdown
![Error Handling](screenshots/error-handling.png)
```

---

## Requirements

To run this project, you need:

- A Linux operating system
- Bash shell
- `sudo` privileges
- `zip` utility

If the `zip` utility is not installed, install it using your distribution's package manager.

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

## Concepts Practiced

This project demonstrates practical knowledge of:

- Bash scripting
- Functions
- User input with `read`
- Conditional statements
- `if` and `else`
- `case` statements
- `while` loops
- Linux user management
- Linux group management
- User shell modification
- File and directory validation
- Backup automation
- Error handling
- Basic Linux system administration
- Git and GitHub

---

## Future Improvements

Possible future improvements include:

- Add colored terminal output
- Add confirmation before deleting users
- Add logging functionality
- Validate shell paths before modification
- Allow custom backup destinations
- Support `.tar.gz` backups
- Display user and group information
- Check whether required commands are installed
- Add automatic cleanup of old backups

---

## Author

**Muhammad Shoaib**

GitHub: https://github.com/muhammadshoaib776

---

## License

This project is created for educational and practical learning purposes.
