# Level 18 → 19

**Goal:**
The password for the next level is stored in a file called `readme` in the home directory.

Unfortunately, someone has modified `.bashrc` to log you out immediately when you log in via SSH.

**What I Did:**

When I attempted to log in normally, the session immediately terminated because `.bashrc` was configured to log users out as soon as an interactive shell started.

I realised that instead of opening an interactive shell, I could execute a command directly over SSH.

I used:

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat readme"
```

This command connected to the server and executed `cat readme` immediately without starting an interactive shell.

Because the command was executed directly, `.bashrc` did not get a chance to log me out before the contents of the file were displayed.

The output contained the password required for the next level.

**Commands Learned:**

* `ssh` – Connects to a remote system.
* `ssh <host> "<command>"` – Executes a command remotely without starting an interactive shell.
* `cat` – Displays the contents of a file.

**Key Lesson:**

This level demonstrated that SSH can be used to execute commands remotely without opening an interactive session. This is a useful technique when troubleshooting remote systems or automating administrative tasks.
