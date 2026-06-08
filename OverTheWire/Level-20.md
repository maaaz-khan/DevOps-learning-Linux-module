# Level 19 → 20

**Goal:**
To gain access to the next level, use the setuid binary in the home directory.

The password for the next level can be found in the usual location (`/etc/bandit_pass`) after using the setuid binary.

**What I Did:**

I started by listing the contents of the home directory and examining the file permissions:

```bash
ls -l
```

Among the files, I noticed a setuid binary named:

```text
-rwsr-x--- 1 bandit20 bandit19 7408 May  7  2020 bandit20-do
```

The `s` in the owner's execute permission indicated that the program runs with the permissions of its owner (`bandit20`) rather than the user executing it.

To understand how the program worked, I executed it without any arguments:

```bash
./bandit20-do
```

This displayed the usage information:

```text
Run a command as another user.
Usage: ./bandit20-do <command>
```

Using this information, I instructed the binary to execute `cat` on Bandit20's password file:

```bash
./bandit20-do cat /etc/bandit_pass/bandit20
```

The command executed successfully and displayed the password required for the next level.

**Commands Learned:**

* `ls -l` – Displays detailed file information, including permissions.
* `./` – Executes a file in the current directory.
* `cat` – Displays the contents of a file.
* **setuid** – Allows a program to run with the permissions of the file owner rather than the user executing it.

**Key Lesson:**

This level introduced setuid binaries and demonstrated how a program can temporarily execute with another user's privileges. Understanding setuid permissions is important because they are commonly used for administrative tasks and are a key concept in Linux security.
