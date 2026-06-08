# User and Group Management Fundamentals

Linux is a multi-user operating system, which means multiple users can access the same system while maintaining different levels of access and permissions.

Understanding users and groups is essential for managing security, controlling access to files and directories, and administering Linux systems effectively.

---

## Viewing the Current User

The `whoami` command displays the currently logged-in user.

```bash
whoami
```

Example output:

```text
maaaz
```

This is useful when working on systems with multiple user accounts.

---

## Viewing User Information

The `id` command displays information about a user, including their user ID (UID) and group memberships.

```bash
id
```

Example output:

```text
uid=1000(maaaz) gid=1000(maaaz) groups=1000(maaaz),1001(dev)
```

This allows me to quickly check which groups a user belongs to.

---

## Creating Users

The `useradd` command is used to create new user accounts.

```bash
sudo useradd john
```

To create a home directory at the same time:

```bash
sudo useradd -m john
```

After creating a user, a password can be assigned using:

```bash
sudo passwd john
```

---

## Creating Groups

Groups make it easier to manage permissions for multiple users.

To create a new group:

```bash
sudo groupadd dev
```

This creates a group called `dev`.

---

## Adding Users to Groups

Users can be added to existing groups using:

```bash
sudo usermod -aG dev john
```

Options used:

* `-a` = append
* `-G` = supplementary group

This command adds the user `john` to the `dev` group without removing their existing group memberships.

---

## Viewing Group Memberships

To see which groups a user belongs to:

```bash
groups john
```

or:

```bash
id john
```

This is useful when troubleshooting permission-related issues.

---

## Removing Users from Groups

A user can be removed from a group using:

```bash
sudo gpasswd -d john dev
```

This removes `john` from the `dev` group.

---

## Sudo Privileges

The `sudo` command allows authorised users to execute commands with elevated privileges.

Example:

```bash
sudo apt update
```

Users can be granted administrative privileges by being added to the `sudo` group.

Example:

```bash
sudo usermod -aG sudo john
```

---

## Why Groups Matter

Groups simplify permission management.

For example:

* Developers can belong to a `dev` group.
* Administrators can belong to a `sudo` group.
* Multiple users can share access to the same files through group permissions.

This avoids assigning permissions individually to every user.

---

## Practical Exercise

During my Linux practice, I created a group called `dev`, added users to it, and experimented with directory permissions using commands such as:

```bash
groupadd dev
usermod -aG dev user1
chmod 770 project
```

This helped me understand how permissions and groups work together to control access to files and directories.

---

## Key Takeaway

User and group management forms a critical part of Linux administration. By understanding how users, groups, and permissions interact, I gained a better understanding of system security, access control, and the principles used to manage Linux environments in real-world DevOps and cloud platforms.
