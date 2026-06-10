# Level 12 → 13

**Goal:**
The password for the next level is stored in the file `data.txt`, which is a hexdump of a file that has been repeatedly compressed.

**Tip:** It may be useful to create a working directory under `/tmp` using `mktemp -d`.

**What I Did:**

I started by creating a temporary working directory so I could safely manipulate files without affecting the original data:

```bash
mktemp -d
cd /tmp/tmp.X
```

I then copied `data.txt` into the working directory:

```bash
cp ~/data.txt .
```

The challenge stated that the file was a hexdump, so I converted it back into its original binary form using:

```bash
xxd -r data.txt > layer1.bin
```

Next, I used the `file` command to determine what type of file I was dealing with:

```bash
file layer1.bin
```

Based on the output, I renamed the file with the correct extension and decompressed it using the appropriate tool.

Examples included:

```bash
mv layer1.bin layer1.gz
gunzip layer1.gz

bunzip2 layer2.bz2

tar -xf layer3.tar
```

After each extraction or decompression, I ran:

```bash
file <filename>
```

to identify the next file type and determine which tool to use.

I repeated this process through several layers of compression until I eventually reached a human-readable file containing the password for the next level.

**Commands Learned:**

* `mktemp -d` – Creates a temporary directory.
* `cp` – Copies files.
* `xxd -r` – Reverses a hexdump back into binary data.
* `file` – Identifies file types.
* `gunzip` – Decompresses gzip files.
* `bunzip2` – Decompresses bzip2 files.
* `tar -xf` – Extracts files from a tar archive.
* `mv` – Renames or moves files.

**Key Lesson:**

This level taught me the importance of identifying file types before attempting to process them. The `file` command became an essential tool for determining which extraction or decompression method to use at each stage of the challenge.

