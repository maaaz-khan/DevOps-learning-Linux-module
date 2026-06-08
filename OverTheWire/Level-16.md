# Level 15 → 16

**Goal:**
The password for the next level can be retrieved by submitting the password of the current level to port `30001` on `localhost` using SSL/TLS encryption.

**What I Did:**

I noticed that this challenge was very similar to the previous level, but this time the communication needed to be encrypted using SSL/TLS.

I recalled that OpenSSL provides tools for establishing secure connections and researched the `s_client` option.

To connect securely to the service running on port `30001`, I used:

```bash
openssl s_client -connect localhost:30001
```

Once the SSL connection was established, I entered the password from the previous level and pressed Enter.

The server verified the password and returned the password required for the next level.

**Commands Learned:**

* `openssl` – A toolkit for working with SSL/TLS encryption.
* `openssl s_client` – Creates a secure SSL/TLS client connection to a remote service.
* `localhost` – Refers to the machine currently being used.
* `-connect` – Specifies the host and port to connect to.

**Key Lesson:**

This level introduced SSL/TLS-encrypted communication and demonstrated the difference between connecting to a standard network service with Netcat and connecting to a secure service using OpenSSL.
