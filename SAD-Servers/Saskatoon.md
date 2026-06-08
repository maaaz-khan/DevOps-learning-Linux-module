# "Saskatoon": counting IPs

## Scenario:

There's a web server access log file at `/home/admin/access.log`. The file consists of one line per HTTP request, with the requester's IP address at the beginning of each line.

**Level:** Easy
**Type:** Do
**Tags:** bash

## Description:

There's a web server access log file at `/home/admin/access.log`. The file consists of one line per HTTP request, with the requester's IP address at the beginning of each line.

Find what's the IP address that has the most requests in this file (there's no tie; the IP is unique). Write the solution into a file `/home/admin/highestip.txt`. For example, if your solution is `"1.2.3.4"`, you can do:

```bash
echo "1.2.3.4" > /home/admin/highestip.txt
```

**Root (sudo) Access:** False

## Test:

The SHA1 checksum of the IP address:

```bash
sha1sum /home/admin/highestip.txt
```

is:

```text
6ef426c40652babc0d081d438b9f353709008e93
```

(just a way to verify the solution without giving it away.)

The "Check My Solution" button runs the script:

```bash
/home/admin/agent/check.sh
```

which you can see and execute.

# "Saskatoon": Counting IPs - Solution

## Approach Taken:

### 1. Examined the log file:

```bash
cat /home/admin/access.log
```

### 2. Extracted IP addresses (first column):

```bash
awk '{print $1}' /home/admin/access.log
```

### 3. Sorted IPs for counting:

```bash
awk '{print $1}' /home/admin/access.log | sort
```

### 4. Counted unique IPs:

```bash
awk '{print $1}' /home/admin/access.log | sort | uniq -c
```

### 5. Sorted by request count (descending):

```bash
awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -nr
```

### 6. Identified the top IP:

```bash
awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -nr | head -1
```

### 7. Extracted just the IP address:

```bash
awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'
```

### 8. Saved the solution:

```bash
awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -nr | head -1 | awk '{print $2}' > /home/admin/highestip.txt
```

### 9. Verified the solution:

```bash
sha1sum /home/admin/highestip.txt
```

## Commands Used

```bash
cat
awk
sort
uniq
head
sha1sum
```

## Command Breakdown

* `cat` – Displays the contents of a file.
* `awk` – Extracts and processes specific fields from structured data.
* `sort` – Sorts lines alphabetically or numerically.
* `uniq -c` – Counts occurrences of duplicate entries.
* `head -1` – Displays the first line of output.
* `sha1sum` – Generates a SHA1 hash used for verification.

## What I Learned

* How to extract specific fields from a log file using `awk`.
* Why data needs to be sorted before using `uniq` to count occurrences.
* How command pipelines can be used to process large amounts of data efficiently.
* How to identify patterns and trends within web server logs.
* How multiple simple Linux commands can be combined to solve a real-world problem.

## Key Takeaway

This challenge demonstrated the power of Linux text-processing tools when analysing log files. By combining commands such as `awk`, `sort`, `uniq`, and `head`, I was able to transform raw log data into meaningful information and identify the IP address responsible for the highest number of requests.

The exercise reinforced the importance of log analysis, command-line problem solving, and data processing skills that are commonly used in Linux administration, DevOps, and Site Reliability Engineering.
