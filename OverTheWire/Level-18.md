# Level 17 → 18

**Goal:**
There are two files in the home directory: `passwords.old` and `passwords.new`.

The password for the next level is stored in `passwords.new` and is the only line that differs between the two files.

**What I Did:**

I started by listing the files in the home directory and confirming that both files were present.

To understand their contents, I viewed each file:

```bash
cat passwords.old
cat passwords.new
```

Since the files contained many lines, manually comparing them would have been time-consuming.

I researched the `diff` command by reading its manual page:

```bash
man diff
```

I then used `diff` to compare the two files:

```bash
diff passwords.old passwords.new
```

The output highlighted the line that had changed between the files.

From the output, I identified the new value contained in `passwords.new`, which was the password required for the next level.

**Commands Learned:**

* `diff` – Compares two files and displays the differences between them.
* `man` – Displays the manual page for a command.
* `cat` – Displays the contents of a file.

**Key Lesson:**

This level introduced file comparison using `diff`, a tool commonly used to identify changes between files, configuration files, scripts, and source code. Understanding how to compare file versions is an important skill for troubleshooting and system administration.

