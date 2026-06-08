# Level 1 → 2

**Goal:**
The password for the next level is stored in a file called `-` located in the home directory.

**What I Did:**

I first ran `ls` to view the files in the home directory and found a file named `-`.

Initially, I tried reading the file using:

```bash
cat -
```

However, this did not work as expected because `-` is interpreted as standard input (stdin) rather than a filename.

To understand why, I checked the `cat` manual page using:

```bash
man cat
```

I learned that when `cat` is given `-`, it reads from standard input instead of a file.

To access the file literally named `-`, I specified its path in the current directory:

```bash
cat ./-
```

This successfully displayed the contents of the file and revealed the password for the next level.

**Commands Learned:**

* `man` – Displays the manual page for a command.
* `cat` – Displays the contents of a file.
* `./` – Refers to the current directory and can be used to distinguish filenames from command options or special characters.
