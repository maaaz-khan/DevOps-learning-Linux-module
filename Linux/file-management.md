# File Management & Navigation

One of the first things I learned in Linux was how important it is to be comfortable navigating the file system. Almost every task in Linux involves moving between directories, creating files, managing folders, or copying and organising data. The commands below form the foundation of day-to-day Linux usage.

---

## pwd

The `pwd` command stands for **Print Working Directory**. It displays the full path of the directory I am currently working in.

I found this particularly useful when moving through multiple directories, as it helps confirm exactly where I am in the file system.

**Example:**

```bash
pwd
```

---

## ls

The `ls` command is used to list the contents of a directory. It allows me to view files and folders without needing to open them individually.

Some commonly used options include:

```bash
ls
ls -l
ls -la
```

* `ls` displays files and directories.
* `ls -l` provides detailed information such as permissions, ownership, and file size.
* `ls -la` also shows hidden files and directories.

---

## cd

The `cd` command stands for **Change Directory** and is used to move around the Linux file system.

Examples:

```bash
cd Documents
cd ..
cd ~
cd /
```

I use this command constantly when navigating between project folders, configuration files, and repositories.

---

## mkdir

The `mkdir` command stands for **Make Directory** and is used to create new directories.

**Example:**

```bash
mkdir Projects
```

I often use this when organising files or creating new project structures.

---

## touch

The `touch` command is commonly used to create empty files directly from the terminal.

**Example:**

```bash
touch notes.txt
```

It can also be used to update a file's timestamp, but I mainly use it when creating files for practice exercises, scripts, and documentation.

---

## cp

The `cp` command is used to copy files and directories from one location to another.

**Examples:**

```bash
cp file.txt backup.txt
cp -r Project Backup
```

The `-r` option allows entire directories and their contents to be copied recursively.

This command is useful for creating backups before making changes to important files.

---

## mv

The `mv` command is used to move files and directories. It can also be used to rename files.

**Examples:**

```bash
mv file.txt Documents/
mv oldname.txt newname.txt
```

I frequently use this command to reorganise files and keep project directories tidy.

---

## rm

The `rm` command is used to remove files and directories.

**Examples:**

```bash
rm file.txt
rm -r DirectoryName
```

The `-r` option removes directories and their contents recursively.

Because deleted files cannot usually be recovered easily, I learned to use this command carefully and always double-check the target before executing it.

---

## Key Takeaway

Learning these commands gave me the confidence to navigate Linux efficiently and manage files directly from the command line. They form the foundation for many other Linux, scripting, and DevOps tasks, and I now use them regularly when working with projects, scripts, and Git repositories.
