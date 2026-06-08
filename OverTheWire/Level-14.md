# Level 13 → 14

**Goal:**
The password for the next level is stored in `/etc/bandit_pass/bandit14` and can only be read by user `bandit14`.

For this level, the next password is not provided directly. Instead, a private SSH key is supplied, which can be used to authenticate as `bandit14`.

**What I Did:**

I started by listing the contents of the home directory:

```bash
ls
```

This revealed a private key file:

```text
sshkey.private
```

I initially attempted to change the file permissions:

```bash
chmod 600 sshkey.private
```

However, this failed because I did not own the original file.

To work around this, I created a temporary directory and copied the key into it:

```bash
mkdir /tmp/mydir
cd /tmp/mydir

cp ~/sshkey.private .
```

Since I now owned the copied file, I was able to update its permissions:

```bash
chmod 600 sshkey.private
```

I then used the private key to authenticate as `bandit14`:

```bash
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
```

Once logged in as `bandit14`, I displayed the contents of the password file:

```bash
cat /etc/bandit_pass/bandit14
```

This revealed the password required for the next level.

**Commands Learned:**

* `cp` – Copies files.
* `chmod 600` – Restricts file access to the owner only.
* `ssh -i` – Uses a specified private key for SSH authentication.
* `cat` – Displays the contents of a file.

**Key Lesson:**

This level introduced SSH key-based authentication and demonstrated why private key permissions are important when accessing remote systems securely.
