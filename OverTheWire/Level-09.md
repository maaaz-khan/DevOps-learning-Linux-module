Level 8 → 9

Goal:
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once.

What I Did:

I checked the suggested commands on the Bandit website and noticed tools such as grep, sort, and uniq.

Since the file contained many repeated lines, I thought uniq would be useful for identifying the line that appeared only once.

After reading the manual pages for sort and uniq, I learned that:

uniq -u displays only unique lines.
uniq only works correctly when duplicate lines are adjacent, which means the input must first be sorted.

I then ran:

sort data.txt | uniq -u

This sorted the file and returned the single line that appeared only once, revealing the password for the next level.

Commands Learned:

sort – Arranges lines of text in alphabetical order.
uniq – Filters duplicate lines from input.
uniq -u – Displays only lines that occur once.
man – Displays the manual page for a command.
| (pipe) – Passes the output of one command as input to another.


