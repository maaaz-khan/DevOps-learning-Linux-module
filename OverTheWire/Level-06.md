# Level 5 → 6

**Goal:**
The password for the next level is stored in a file somewhere under the `inhere` directory and has all of the following properties:

* Human-readable
* 1033 bytes in size
* Not executable

**What I Did:**

Since the challenge specified the file size, I used the `find` command to search for files that were exactly 1033 bytes:

```bash
find -type f -size 1033c
```

This returned:

```text
./maybehere07/.file2
```

I then inspected the directory containing the file:

```bash
ls maybehere07/
```

To verify the file's details, I checked its permissions and size:

```bash
ls -l maybehere07/.file2
```

The file was readable and matched the criteria given in the challenge.

Finally, I displayed its contents using:

```bash
cat maybehere07/.file2
```

This revealed the password needed to progress to the next level.

**Commands Learned:**

* `find` – Searches for files and directories based on specific criteria.
* `-type f` – Restricts the search to files only.
* `-size 1033c` – Searches for files that are exactly 1033 bytes in size.
* `ls -l` – Displays detailed file information, including permissions and size.
* `cat` – Displays the contents of a file.
