# Level 7 → 8

**Goal:**
The password for the next level is stored in the file `data.txt` next to the word `millionth`.

**What I Did:**

I first ran `ls` to confirm that `data.txt` was present in the current directory.

To inspect the file, I used:

```bash
cat data.txt
```

The file contained a large number of word-password pairs, making it impractical to search manually.

To quickly locate the line containing the word `millionth`, I used the `grep` command:

```bash
cat data.txt | grep millionth
```

This returned the line containing the word `millionth` along with the password for the next level.

**Commands Learned:**

* `cat` – Displays the contents of a file.
* `grep` – Searches for specific text patterns within a file.
* `|` (pipe) – Passes the output of one command as input to another command.
