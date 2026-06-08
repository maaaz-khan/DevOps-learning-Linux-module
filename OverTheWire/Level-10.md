# Level 9 → 10

**Goal:**
The password for the next level is stored in the file `data.txt` in one of the few human-readable strings, preceded by several `=` characters.

**What I Did:**

I started by checking the contents of the directory:

```bash
ls
```

I then attempted to view the file:

```bash
cat data.txt
```

However, the output appeared to contain mostly non-readable or binary data, making it difficult to locate the password manually.

Recalling the challenge hint, I knew I needed to find a human-readable string that was preceded by several `=` characters.

Since standard `grep` may treat binary files differently, I used the `-a` option to force `grep` to process the file as text:

```bash
cat data.txt | grep -a '===='
```

This displayed the human-readable strings containing multiple `=` characters, allowing me to identify the password for the next level.

**Commands Learned:**

* `grep` – Searches for text patterns within files.
* `grep -a` – Treats binary files as text when searching.
* `cat` – Displays the contents of a file.
* `|` (pipe) – Passes the output of one command as input to another.

**Additional Note:**

After completing the challenge, I learned that the same result could be achieved more efficiently by allowing `grep` to read the file directly:

```bash
grep -a '====' data.txt
```
