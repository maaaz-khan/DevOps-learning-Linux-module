# Level 11 → 12

**Goal:**
The password for the next level is stored in the file `data.txt`, where all lowercase (`a-z`) and uppercase (`A-Z`) letters have been rotated by 13 positions.

**What I Did:**

I started by listing the files in the directory:

```bash
ls
```

I then viewed the contents of the file:

```bash
cat data.txt
```

The text was readable, but it did not make sense. Based on the challenge description and the OverTheWire helpful material, I recognised that the file was encoded using **ROT13**, a substitution cipher that rotates each letter by 13 positions in the alphabet.

After researching how ROT13 works, I used the `tr` command to translate the characters and decode the text:

```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

This successfully decoded the contents of the file and revealed the password for the next level.

**Commands Learned:**

* `cat` – Displays the contents of a file.
* `tr` – Translates or replaces characters from one set to another.
* `ROT13` – A simple letter substitution cipher that shifts each letter by 13 positions.
* `|` (pipe) – Passes the output of one command as input to another.

**Additional Note:**

After completing the challenge, I learned that `tr` can be used for many different character translations, making it a useful tool for text manipulation and data processing in Linux.

