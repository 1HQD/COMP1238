# CLI Commands
## cat:
- Description: The cat command concatenates and displays the content of files.

* ### Usage:
- cat filename

* ### Options:
- cat file1 file2: Concatenates and displays the contents of multiple files.
- cat -n filename: Displays the content of the file with line numbers

## cd:
- Description: The cd command changes the current directory.

* ### Usage:
- cd /path/to/directory

* ### Examples:
- cd ..: Moves up one directory level.
- cd ~: Changes to the home directory.

## ls:
- Description: The ls command lists the contents of a directory.

* ### Usage:
- ls

* ### Options:
- ls -l: Lists files in long format, showing detailed information like permissions, owner, size, and modification date.
- ls -a: Includes hidden files (those starting with a dot).

## rm:
- Description: The rm command removes (deletes) files or directories.

* ### Usage:
- rm filename

* ### Options:
- rm -r directory: Recursively deletes a directory and its contents.
- rm -f filename: Forcefully deletes a file without prompting for confirmation.

## sudo:
- Description: The sudo command allows a permitted user to execute a command as the superuser or another user, as specified by the security policy.

* ### Usage:
- sudo command

* ### Examples:
- sudo apt-get update: Updates the package lists for upgrades and new package installations.
- sudo rm -rf /: A dangerous command that forcefully deletes everything in the root directory (often cited as a joke or warning).