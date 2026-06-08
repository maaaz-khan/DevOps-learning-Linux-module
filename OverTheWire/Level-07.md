# Level 6 → 7

**Goal:**
The password for the next level is stored somewhere on the server and has all of the following properties:

* Owned by user `bandit7`
* Owned by group `bandit6`
* 33 bytes in size

**What I Did:**

Since the file could be located anywhere on the server, I used the `find` command and filtered the search using the criteria provided in the challenge:

```bash
find / -type f -size 33c -user bandit7 -group bandit6
```

This successfully searched the filesystem, but it also produced many **Permission denied** messages when attempting to access directories that my user account did not have permission to read.

To clean up the output, I redirected the error messages to `/dev/null`:

```bash
find / -type f -size 33c -user bandit7 -group bandit6 2>/dev/null
```

This returned a single result:

```text
/var/lib/dpkg/info/bandit7.password
```

I then displayed the contents of the file using:

```bash
cat /var/lib/dpkg/info/bandit7.password
```

This revealed the password needed to progress to the next level.

**Commands Learned:**

* `find` – Searches for files and directories based on specified criteria.
* `-user` – Searches for files owned by a particular user.
* `-group` – Searches for files belonging to a specific group.
* `-size` – Searches for files of a specific size.
* `2>/dev/null` – Redirects error output to `/dev/null`, effectively hiding unwanted error messages.
* `cat` – Displays the contents of a file.
