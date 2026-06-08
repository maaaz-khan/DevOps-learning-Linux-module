# Environment Variables and Shell Fundamentals

The Linux shell acts as an interface between the user and the operating system. It allows commands to be executed, scripts to run, and system information to be accessed directly from the terminal.

As I progressed through my Linux studies, I learned how the shell works, how environment variables influence system behaviour, and how to customise my working environment.

---

## What is a Shell?

A shell is a command-line interpreter that accepts commands and passes them to the operating system for execution.

Common Linux shells include:

* Bash (Bourne Again Shell)
* Zsh (Z Shell)
* Sh (Bourne Shell)

To check which shell is currently being used:

```bash
echo $SHELL
```

Example output:

```text
/bin/zsh
```

---

## Viewing the Current Shell

To display the currently running shell session:

```bash
echo $0
```

Example output:

```text
-zsh
```

This is useful when working across different Linux environments.

---

## What are Environment Variables?

Environment variables are values stored by the shell that can be accessed by programs and scripts.

They help define:

* User information
* File locations
* System configuration
* Application settings

To display all environment variables:

```bash
printenv
```

or

```bash
env
```

---

## Viewing Individual Variables

Environment variables can be viewed using the `$` symbol.

Examples:

```bash
echo $HOME
echo $USER
echo $PATH
echo $SHELL
```

Common variables:

| Variable | Purpose                         |
| -------- | ------------------------------- |
| HOME     | User's home directory           |
| USER     | Current username                |
| PATH     | Locations searched for commands |
| SHELL    | Current shell                   |
| PWD      | Current working directory       |

---

## Understanding PATH

The `PATH` variable contains a list of directories that Linux searches when a command is executed.

To view it:

```bash
echo $PATH
```

When a command such as:

```bash
ls
```

is entered, Linux searches the directories listed in `PATH` until it finds the executable.

---

## Creating Environment Variables

Variables can be created temporarily within the current shell session.

Example:

```bash
MY_NAME="Maaaz"
```

To view the value:

```bash
echo $MY_NAME
```

Output:

```text
Maaaz
```

---

## Exporting Variables

To make a variable available to child processes:

```bash
export MY_NAME="Maaaz"
```

Exported variables can be accessed by scripts and applications launched from the current session.

---

## Configuration Files

Shell settings are commonly stored in configuration files.

For Bash:

```text
~/.bashrc
```

For Zsh:

```text
~/.zshrc
```

These files can be used to:

* Create aliases
* Set environment variables
* Configure prompts
* Customise the shell experience

---

## Customising the Shell

As part of my Linux practice, I customised my shell prompt and configured Zsh to improve my terminal experience.

Examples include:

* Changing the shell from Bash to Zsh
* Configuring Oh My Zsh
* Customising prompts
* Displaying Git branch information in the terminal

These customisations improved both usability and productivity.

---

## Useful Commands

Display all variables:

```bash
env
```

Display a specific variable:

```bash
echo $HOME
```

Export a variable:

```bash
export PROJECT="Linux Notes"
```

Reload shell configuration:

```bash
source ~/.zshrc
```

---

## Why This Matters

Environment variables are used extensively throughout Linux systems, cloud platforms, containers, automation tools, and DevOps workflows.

Many applications rely on environment variables for configuration, credentials, file paths, and deployment settings. Understanding how they work is essential when managing Linux systems and building automated solutions.

---

## Key Takeaway

Learning about environment variables and shell fundamentals helped me better understand how Linux sessions are configured and how commands are executed. It also introduced me to shell customisation, configuration management, and concepts that are widely used throughout DevOps, cloud computing, and automation.
