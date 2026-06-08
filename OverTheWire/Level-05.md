# Level 4 → 5

**Goal:**
The password for the next level is stored in the only human-readable file in the `inhere` directory.

**Tip:** If your terminal becomes unusable after displaying certain file contents, try using the `reset` command.

**What I Did:**

I navigated to the `inhere` directory and listed its contents:

```bash
cd inhere/
ls
```

This revealed ten files named `-file00` through `-file09`.

I remembered from Level 1 → 2 that filenames beginning with `-` can be interpreted as command options. To avoid this issue, I prefixed the filenames with `./` when using the `file` command:

```bash
file ./*
```

This displayed the file type of each file. Among the results, I found:

```text
./-file07: ASCII text
```

Since ASCII text is human-readable, I knew that `-file07` was the file I needed.

Again, using what I learned in Level 1 → 2, I prefixed the filename with `./` when reading its contents:

```bash
cat ./-file07
```

This successfully displayed the password for the next level.

**Commands Learned:**

* `file` – Identifies the type of a file.
* `./` – Refers to the current directory and helps distinguish filenames from command options.
* `cat` – Displays the contents of a file.
* `reset` – Restores the terminal if it becomes unreadable.
