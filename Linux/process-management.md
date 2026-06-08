# Process Management and System Monitoring

Every program running on a Linux system operates as a process. Understanding how to view, monitor, and manage processes is an essential skill for troubleshooting issues, identifying resource usage, and maintaining system stability.

During my Linux studies, I learned how to inspect running processes, monitor system performance, and safely terminate processes when required.

---

## What is a Process?

A process is simply a running instance of a program.

For example:

* A web server
* A text editor
* A Bash script
* A database service

Each process is assigned a unique Process ID (PID) which Linux uses to identify it.

---

## Viewing Running Processes

The `ps` command displays information about running processes.

```bash
ps
```

To see all processes running on the system:

```bash
ps aux
```

This command provides detailed information including:

* User running the process
* Process ID (PID)
* CPU usage
* Memory usage
* Command that started the process

---

## Monitoring Processes in Real Time

The `top` command provides a real-time view of system activity.

```bash
top
```

It displays:

* Running processes
* CPU usage
* Memory usage
* System load

This is useful when investigating performance issues or identifying resource-intensive applications.

---

## Using htop

`htop` is an enhanced version of `top` with a more user-friendly interface.

```bash
htop
```

Benefits include:

* Colour-coded output
* Easier navigation
* Process filtering
* Interactive process management

If not installed:

```bash
sudo apt install htop
```

---

## Finding Specific Processes

The `grep` command can be combined with `ps` to locate specific processes.

Example:

```bash
ps aux | grep nginx
```

This displays any running processes related to Nginx.

Similarly:

```bash
ps aux | grep ssh
```

shows SSH-related processes.

---

## Terminating Processes

Processes can be stopped using the `kill` command.

Example:

```bash
kill 1234
```

Where `1234` is the Process ID.

Linux sends a signal requesting that the process terminate gracefully.

---

## Force Terminating Processes

If a process does not respond, it can be forcefully terminated using:

```bash
kill -9 1234
```

The `-9` signal immediately stops the process.

Because this bypasses the normal shutdown process, it should be used carefully.

---

## Using pkill

Instead of specifying a PID, `pkill` allows processes to be terminated by name.

Example:

```bash
pkill firefox
```

This terminates all running Firefox processes.

---

## Viewing Background Jobs

Linux allows processes to run in the background.

To view background jobs:

```bash
jobs
```

To move a process to the background:

```bash
bg
```

To bring it back to the foreground:

```bash
fg
```

These commands are particularly useful when working in terminal sessions.

---

## Checking System Uptime

The `uptime` command displays:

```bash
uptime
```

Information includes:

* How long the system has been running
* Number of logged-in users
* System load averages

---

## Why This Matters

Process management and monitoring are critical skills for Linux administrators and DevOps engineers. Understanding how to inspect running processes, monitor system resources, and troubleshoot performance issues helps maintain stable and reliable systems.

These skills are regularly used when managing servers, diagnosing application issues, monitoring services, and responding to incidents in production environments.

---

## Key Takeaway

Learning process management helped me understand what is happening behind the scenes on a Linux system. By using tools such as `ps`, `top`, `htop`, `kill`, and `pkill`, I gained practical experience monitoring system activity and managing running applications from the command line.
