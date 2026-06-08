# Understanding File Permissions and Ownership

File permissions are one of the core security features of Linux. They determine who can read, write, or execute files and directories on a system.

Learning how permissions work helped me better understand how Linux controls access to files and why certain commands require elevated privileges.

---

## Viewing Permissions

The `ls -l` command displays detailed information about files and directories, including their permissions.

```bash
ls -l
```

Example output:

```text
-rwxr-xr-- 1 maaaz dev 1200 Jun 8 script.sh
```

The first section represents the file permissions.

---

## Understanding Permission Types

Linux permissions are divided into three categories:

* **r** = Read
* **w** = Write
* **x** = Execute

Example:

```text
rwxr-xr--
```

This can be broken down as:

```text
rwx | r-x | r--
User  Group Other
```

### User

The owner of the file.

Permissions:

```text
rwx
```

Can read, write, and execute.

### Group

Members of the assigned group.

Permissions:

```text
r-x
```

Can read and execute but cannot modify the file.

### Other

Everyone else on the system.

Permissions:

```text
r--
```

Can only read the file.

---

## Changing Permissions with chmod

The `chmod` command is used to modify file permissions.

Example:

```bash
chmod 755 script.sh
```

This gives:

```text
rwxr-xr-x
```

Meaning:

* Owner can read, write, and execute.
* Group can read and execute.
* Others can read and execute.

Another example:

```bash
chmod 770 project
```

Permissions:

```text
rwxrwx---
```

Only the owner and group have access.

---

## Understanding Octal Notation

Linux permissions can also be represented using numbers.

| Number | Permission |
| ------ | ---------- |
| 4      | Read       |
| 2      | Write      |
| 1      | Execute    |

Examples:

```text
7 = 4 + 2 + 1 = rwx
6 = 4 + 2 = rw-
5 = 4 + 1 = r-x
```

Common permission sets:

```text
755 = rwxr-xr-x
644 = rw-r--r--
770 = rwxrwx---
600 = rw-------
```

---

## File Ownership

Every file in Linux has:

* An owner (user)
* A group

These can be viewed using:

```bash
ls -l
```

Example:

```text
-rw-r--r-- 1 maaaz dev notes.txt
```

Here:

* `maaaz` is the owner
* `dev` is the group

---

## Changing Ownership

The `chown` command is used to change file ownership.

Example:

```bash
sudo chown maaaz notes.txt
```

The `chgrp` command changes the group assigned to a file.

Example:

```bash
sudo chgrp dev notes.txt
```

---

## Why This Matters

Understanding permissions and ownership is essential when working with Linux systems because they help protect files, restrict access, and improve security.

These concepts are used constantly in system administration, automation, cloud environments, container platforms, and DevOps workflows. Misconfigured permissions can cause applications to fail or create security risks, making this a fundamental skill for anyone working with Linux.
