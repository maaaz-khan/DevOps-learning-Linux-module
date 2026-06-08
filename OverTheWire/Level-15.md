# Level 14 → 15

**Goal:**
The password for the next level can be retrieved by submitting the password of the current level to port `30000` on `localhost`.

**What I Did:**

I understood that I needed to use the password obtained from the previous level and submit it to a service running on port `30000`.

Since the challenge involved communicating with a network port, I researched the `nc` (Netcat) command by reading its manual page:

```bash
man nc
```

This helped me understand that Netcat can be used to connect to a specific host and port and send data.

I then connected to the service running on `localhost` at port `30000`:

```bash
nc localhost 30000
```

After establishing the connection, I entered the password from the previous level and pressed Enter.

The service validated the password and returned the password required for the next level.

**Commands Learned:**

* `nc` (Netcat) – Creates network connections and communicates with services running on specific ports.
* `localhost` – Refers to the machine currently being used.
* `man` – Displays the manual page for a command.

**Key Lesson:**

This level introduced basic network communication using Netcat. It demonstrated how services can listen on ports and how data can be sent and received through a network connection, even when communicating with the local machine.
