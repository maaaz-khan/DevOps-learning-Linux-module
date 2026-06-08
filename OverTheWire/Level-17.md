# Level 16 → 17

**Goal:**
The credentials for the next level can be retrieved by submitting the password of the current level to a port on `localhost` in the range `31000` to `32000`.

First, find out which ports have a service listening on them. Then determine which of those services use SSL/TLS. Only one of the services will return the credentials for the next level.

**What I Did:**

I realised that I first needed to identify which ports were open within the specified range.

To do this, I used `nmap` to scan ports `31000` through `32000` on `localhost`:

```bash
nmap -p 31000-32000 localhost
```

This revealed several open ports.

Next, I tested each open port using OpenSSL to determine which services supported SSL/TLS:

```bash
openssl s_client -connect localhost:<port>
```

Most services either rejected the connection or simply echoed back my input.

After testing the available ports, I found that port `31790` accepted an SSL/TLS connection and behaved differently from the others.

I connected to the service and submitted the password from the previous level.

The server responded with an RSA private key rather than a password.

I saved the key to a file and secured its permissions:

```bash
echo "<private key contents>" > bandit17_key.pem
chmod 600 bandit17_key.pem
```

I then used the private key to authenticate as `bandit17`:

```bash
ssh -i bandit17_key.pem bandit17@bandit.labs.overthewire.org -p 2220
```

After successfully logging in, I obtained the password required for the next level.

**Commands Learned:**

* `nmap` – Scans hosts and identifies open ports.
* `openssl s_client` – Establishes SSL/TLS connections to network services.
* `chmod 600` – Restricts file access to the owner only.
* `ssh -i` – Uses a specified private key for SSH authentication.

**Key Lesson:**

This level introduced basic port scanning, service enumeration, and SSL/TLS investigation. It demonstrated how to identify network services, test secure connections, and use the information gathered to authenticate to a remote system.
