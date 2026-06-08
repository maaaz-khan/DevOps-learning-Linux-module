# Level 3 → 4

**Goal:**
The password for the next level is stored in a hidden file inside the `inhere` directory.

**What I Did:**

I started by running `ls` in the home directory and found a subdirectory named `inhere`.

```bash
ls
cd inhere/
```

Running a normal `ls` command showed no visible files. Since hidden files in Linux begin with a dot (`.`), I used the `-a` flag to display all files, including hidden ones.

```bash
ls -a
```

This revealed a hidden file named:

```text
...Hiding-From-You
```

To read the contents of the file, I used:

```bash
cat ...Hiding-From-You
```

Although the filename begins with dots, no special escaping was required because it did not contain spaces or characters that the shell would interpret differently.

The file contained the password needed to progress to the next level.

**Commands Learned:**

* `cd` – Changes the current directory.
* `ls` – Lists files and directories.
* `ls -a` – Displays all files, including hidden files.
* `cat` – Displays the contents of a file.
