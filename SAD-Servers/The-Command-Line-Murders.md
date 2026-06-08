# The Command Line Murders

## Scenario

This challenge is based on the classic Command Line Murders investigation, with a small twist where the solution differs from the original.

The objective was to identify the murderer by analysing clues scattered throughout the mystery files and then save the answer to:

```bash
/home/admin/mysolution
```

For example:

```bash
echo "John Smith" > ~/mysolution
```

Hints were provided within the `/home/admin/clmystery` directory to assist with the investigation.

**Level:** Easy
**Type:** Do
**Tags:** Bash

**Root (sudo) Access:** False

---

## Investigation

I began by exploring the mystery directory to understand the available evidence and files:

```bash
ls
cd clmystery/
```

Next, I reviewed the README file and worked through each of the provided hints:

```bash
vim README.md

cat ../hint1
cat ../hint2
cat ../hint3
cat ../hint4
cat ../hint5
cat ../hint6
cat ../hint7
cat ../hint8
```

The clues directed me towards investigating the crime scene and identifying potential suspects.

I searched the crime scene records for relevant clues:

```bash
grep CLUE crimescene
```

To understand the available data, I examined the people and vehicle records:

```bash
head -n 20 people
head -n 20 vehicles
```

One clue referenced a witness named Annabel, so I searched the people database:

```bash
grep Annabel people
```

Using information gathered from the witness statements, I followed additional leads by examining street records and vehicle information:

```bash
head -n 173 streets/Mattapan_Street | tail -n 1

grep "Honda" vehicles

grep -A 5 "L337" mystery/vehicles
```

By cross-referencing witness statements, vehicle registrations, addresses, and identifying information, I was able to narrow down the list of suspects and identify the individual responsible.

---

## Solution

Once I had identified the suspect, I saved the answer:

```bash
echo "Joe Germuska" > ~/mysolution
```

To verify the solution, I checked the MD5 hash:

```bash
md5sum mysolution
```

The output matched the expected value provided by the challenge:

```text
9bba101c7369f49ca890ea96aa242dd5
```

---

## Commands Used

```bash
ls
cd
vim
cat
grep
head
tail
md5sum
echo
```

---

## Command Breakdown

* `ls` – Lists files and directories.
* `cd` – Changes the current working directory.
* `vim` – Opens and edits text files.
* `cat` – Displays the contents of a file.
* `grep` – Searches files for matching text patterns.
* `head` – Displays the first lines of a file.
* `tail` – Displays the last lines of a file.
* `echo` – Writes text to standard output or a file.
* `md5sum` – Generates an MD5 hash used for verification.

---

## What I Learned

* How to investigate large datasets using command-line tools.
* How to search and filter information efficiently with `grep`.
* How to combine multiple sources of information to build a complete picture.
* How to use Linux tools to perform forensic-style investigations.
* The importance of following evidence methodically rather than making assumptions.

---

## Key Takeaway

This challenge reinforced the value of systematic investigation and information gathering. Rather than solving a technical fault directly, the task required collecting clues, analysing multiple datasets, and correlating evidence to reach a conclusion.

The exercise demonstrated how Linux command-line tools can be used not only for system administration but also for forensic investigations, troubleshooting, and data analysis. Many of the same investigative techniques apply to real-world DevOps, security, and incident response scenarios.
