# Level 10 → 11

**Goal:**
The password for the next level is stored in the file `data.txt`, which contains Base64 encoded data.

**What I Did:**

I first confirmed that the file existed:

```bash
ls
```

I then viewed the contents of the file:

```bash
cat data.txt
```

The output appeared to be a long string of seemingly random characters, which is often an indicator that the data has been encoded.

Based on the challenge description, I knew the file contained Base64 encoded data. To decode it, I used:

```bash
cat data.txt | base64 -d
```

This successfully decoded the contents of the file and revealed the password for the next level.

**Commands Learned:**

* `cat` – Displays the contents of a file.
* `base64` – Encodes and decodes Base64 data.
* `base64 -d` – Decodes Base64 encoded content.
* `|` (pipe) – Passes the output of one command as input to another.

**Additional Note:**

After completing the challenge, I learned that the same result can be achieved more efficiently by allowing `base64` to read the file directly:

```bash
base64 -d data.txt
```

