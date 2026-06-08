# Networking Essentials and SSH

Networking is a fundamental part of Linux administration and DevOps. Whether connecting to remote servers, troubleshooting connectivity issues, or transferring files between systems, understanding basic networking concepts is essential.

During my Linux studies, I learned how to inspect network information, test connectivity, and securely connect to remote systems using SSH.

---

## Checking Network Configuration

The `ip` command is commonly used to view network information.

```bash
ip addr
```

This displays information about network interfaces and assigned IP addresses.

To view routing information:

```bash
ip route
```

Understanding IP addresses and network interfaces is important when troubleshooting connectivity issues.

---

## Testing Connectivity with ping

The `ping` command is used to test whether a host is reachable across the network.

Example:

```bash
ping google.com
```

This sends packets to the destination and measures the response time.

I often use this command as a quick way to verify internet connectivity or confirm that a remote system is reachable.

---

## Downloading Data with curl and wget

Linux provides tools for interacting with websites and APIs directly from the command line.

### curl

```bash
curl https://example.com
```

Commonly used for:

* Testing APIs
* Retrieving web content
* Downloading data

### wget

```bash
wget https://example.com/file.zip
```

Commonly used for:

* Downloading files
* Retrieving software packages
* Automated downloads

---

## Viewing Open Connections

The `ss` command displays information about network sockets and active connections.

```bash
ss -tuln
```

This allows me to see which ports are listening for connections and helps when troubleshooting services.

---

## DNS Lookups

DNS translates domain names into IP addresses.

Useful commands include:

```bash
nslookup google.com
```

and

```bash
dig google.com
```

These commands help diagnose DNS-related issues and verify name resolution.

---

# Secure Shell (SSH)

SSH stands for **Secure Shell** and is the standard method for securely connecting to remote Linux systems.

SSH encrypts communication between systems and is widely used by system administrators, cloud engineers, and DevOps professionals.

---

## Connecting to a Remote Server

The basic SSH syntax is:

```bash
ssh username@server-ip
```

Example:

```bash
ssh maaaz@192.168.1.10
```

This establishes a secure remote terminal session.

---

## SSH Keys

SSH key authentication is considered more secure than password authentication.

To generate a key pair:

```bash
ssh-keygen -t ed25519
```

This creates:

```text
~/.ssh/id_ed25519
~/.ssh/id_ed25519.pub
```

* The private key remains on my system.
* The public key can be shared with trusted systems.

---

## Copying the Public Key

The public key can be viewed using:

```bash
cat ~/.ssh/id_ed25519.pub
```

This key can then be added to services such as GitHub or remote Linux servers.

---

## Using SSH with GitHub

As part of my Git and GitHub setup, I generated an SSH key and added the public key to my GitHub account.

This allows Git operations such as:

```bash
git push
git pull
```

to be performed securely without repeatedly entering credentials.

To test the connection:

```bash
ssh -T git@github.com
```

---

## Secure File Transfer

SSH can also be used to transfer files securely.

Example:

```bash
scp file.txt user@server:/home/user/
```

This copies a file from the local machine to a remote system.

---

## Why This Matters

Networking and SSH are essential skills for working with Linux servers and cloud environments. They enable secure remote access, troubleshooting, file transfers, and communication between systems.

As infrastructure increasingly moves to the cloud, understanding how systems communicate and how to securely access them is a critical skill for DevOps and cloud engineering roles.

---

## Key Takeaway

Learning networking fundamentals and SSH gave me a better understanding of how Linux systems communicate and how administrators securely manage remote servers. These skills have already been useful when working with GitHub, Linux virtual machines, and hands-on DevOps labs.
