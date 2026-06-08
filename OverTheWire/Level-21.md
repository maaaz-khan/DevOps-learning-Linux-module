# Level 20 → 21

**Goal:**
There is a setuid binary in the home directory that connects to `localhost` on a specified port. It reads a line of text from the connection and compares it to the password from the previous level. If the password is correct, it returns the password for the next level.

**What I Did:**

I started by listing the files in the home directory:

```bash
ls -l
```

This revealed a setuid binary named `suconnect`.

To understand how it worked, I needed a service listening on a local port. I started a Netcat listener on port `10000`:

```bash
nc -l -p 10000
```

In a second terminal session, I executed the binary and specified the same port:

```bash
./suconnect 10000
```

The binary connected to my Netcat listener and waited for input.

Back in the listener, I entered the password obtained from the previous level and pressed Enter.

After validating the password, the binary returned the password required for the next level.

**Commands Learned:**

* `nc -l -p <port>` – Creates a Netcat listener on a specified port.
* `./` – Executes a file from the current directory.
* `ls -l` – Displays detailed file information, including permissions.
* **setuid** – Allows a program to run with the permissions of its owner.

**Key Lesson:**

This level combined several concepts introduced earlier in the Bandit series, including setuid binaries, local network communication, and Netcat. It demonstrated how programs can communicate over network ports and how privileged binaries can be used to perform actions on behalf of another user.
