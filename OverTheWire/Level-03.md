# Level 2 → 3

**Goal:**
Find the password for the next level stored in a file called `spaces in this filename`.

**What I Did:**

I started by running `ls` to list the files in the home directory and saw a file named `spaces in this filename`.

I knew that spaces in filenames can cause issues if they are not handled properly in the shell. For example, if I ran:

```bash
cat spaces in this filename
```

Linux would interpret each word as a separate argument rather than a single filename.

To solve this, I enclosed the filename in quotation marks so that the shell treated it as one argument:

```bash
cat "spaces in this filename"
```

Alternatively, I could have escaped each space using backslashes:

```bash
cat spaces\ in\ this\ filename
```

Both methods successfully displayed the contents of the file and revealed the password for the next level.

**Commands Learned:**

* `ls` – Lists files and directories.
* `cat` – Displays the contents of a file.
* Quotation marks (`" "`) – Allow filenames containing spaces to be treated as a single argument.
* Backslashes (`\`) – Escape special characters such as spaces.
