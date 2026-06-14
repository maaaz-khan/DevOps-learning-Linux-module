# Git Fundamentals & Workflow Guide

This repository contains my notes and practical learning on Git, GitHub, version control, branching strategies, collaboration workflows, and Git best practices.

The goal of this guide is to build a strong understanding of how Git works under the hood while learning the workflows commonly used by software engineers, cloud engineers, and DevOps teams.

---

# Table of Contents

1. Introduction to Git
2. Git Terminology & Key Concepts
3. The .git Directory
4. Common Git Commands
5. History, Branching & Merging
6. Advanced Git Usage
7. Collaboration & Pull Requests
8. Git Workflows
9. Git Best Practices
10. Git Security & Secrets Hygiene

---

# Introduction to Git

Git is a distributed version control system (VCS) that allows developers to track changes, collaborate with others, and maintain a complete history of a project.

Git helps developers:

* Track file changes
* Revert mistakes
* Work collaboratively
* Manage multiple versions of a project
* Create isolated development environments using branches

---

# Git Terminology & Key Concepts

## Repository

A Git project containing source code, configuration files, and a `.git` directory.

## Commit

A snapshot of a project's state at a specific point in time.

## Branch

A movable pointer to a specific commit.

Examples:

* main
* develop
* feature/login

## Remote

A reference to an external Git repository.

Common example:

```bash
origin
```

## Staging Area (Index)

A buffer between your working directory and commit history.

Changes must be staged before being committed.

## HEAD

A pointer to the current branch or commit being worked on.

## Blob

Stores the contents of a file.

## Tree

Represents a directory structure.

## Object Store

Located in:

```text
.git/objects/
```

Stores commits, trees and blobs.

## Tag

A reference to a specific commit, often used to mark releases.

---

# The .git Directory

The `.git` directory contains everything Git needs to track a repository.

```text
.git/
├── HEAD
├── config
├── index
├── objects/
└── refs/
```

### Important Components

| Component | Purpose                  |
| --------- | ------------------------ |
| HEAD      | Current branch pointer   |
| config    | Repository configuration |
| index     | Staging area             |
| objects   | Git database             |
| refs      | Branches and tags        |

Without the `.git` directory, a folder is no longer a Git repository.

---

# Common Git Commands

Initialize a repository:

```bash
git init
```

Stage changes:

```bash
git add .
```

Create a commit:

```bash
git commit -m "message"
```

View status:

```bash
git status
```

View commit history:

```bash
git log
```

Show changes:

```bash
git diff
```

Clone a repository:

```bash
git clone <repository-url>
```

Configure user information:

```bash
git config --global user.name "Name"
git config --global user.email "email@example.com"
```

---

# Viewing History

View commit history:

```bash
git log
```

Condensed history:

```bash
git log --oneline --graph --decorate
```

View specific commit:

```bash
git show <commit>
```

View local reference history:

```bash
git reflog
```

See who modified each line:

```bash
git blame <file>
```

---

# Git vs GitHub

| Git                    | GitHub                      |
| ---------------------- | --------------------------- |
| Version control system | Repository hosting platform |
| Runs locally           | Runs in the cloud           |
| Tracks changes         | Enables collaboration       |
| Works offline          | Requires internet access    |
| Open Source            | Owned by Microsoft          |

Git is the tool.

GitHub is a platform that hosts Git repositories.

---

# Branching

Create a branch:

```bash
git branch feature-login
```

Create and switch:

```bash
git switch -c feature-login
```

Switch branches:

```bash
git switch main
```

Delete branch:

```bash
git branch -d feature-login
```

---

# Merging

Merging combines changes from one branch into another.

```bash
git merge feature-login
```

Example:

```text
main:      A---B---C
                 \
feature:          D---E

merged:    A---B---C---M
                 \     /
                  D---E
```

---

# Rebase vs Merge

| Merge                       | Rebase                          |
| --------------------------- | ------------------------------- |
| Preserves history           | Rewrites history                |
| Creates merge commits       | Creates linear history          |
| Good for team collaboration | Good for cleaning local history |

Avoid rebasing shared branches that others are actively using.

---

# Git Stash

Temporarily save uncommitted work.

```bash
git stash
```

View stashes:

```bash
git stash list
```

Apply stash:

```bash
git stash apply
```

Apply and remove stash:

```bash
git stash pop
```

---

# Reset, Revert & Cherry-Pick

## Revert

Creates a new commit that undoes another commit.

```bash
git revert <commit>
```

Safe for shared repositories.

---

## Reset

Moves a branch pointer backward.

```bash
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1
```

Use with caution.

---

## Cherry-Pick

Apply a specific commit from another branch.

```bash
git cherry-pick <commit>
```

Useful for hotfixes and selective changes.

---

# Forks & Pull Requests

Fork:

A personal copy of another repository.

Workflow:

```text
Fork Repository
       ↓
Clone Fork
       ↓
Create Branch
       ↓
Make Changes
       ↓
Push Changes
       ↓
Open Pull Request
       ↓
Review & Merge
```

---

# Typical Git Workflow

```text
Clone Repository
        ↓
Create Feature Branch
        ↓
Make Changes
        ↓
git add
        ↓
git commit
        ↓
git push
        ↓
Open Pull Request
        ↓
Review & Merge
```

---

# Trunk-Based Development

A development model where developers work from a shared main branch and use short-lived feature branches.

Benefits:

* Faster integration
* Smaller changes
* Reduced merge conflicts

Used by many high-performing engineering teams.

---

# Commit Hygiene & Best Practices

## Good Commit Messages

Good:

```text
Add user authentication validation
```

Bad:

```text
stuff
```

## Recommendations

* One logical change per commit
* Keep commits focused
* Use meaningful commit messages
* Avoid unnecessary merge commits

---

# Pre-Commit Hooks

Pre-commit hooks run automated checks before a commit is created.

Examples:

* Formatting
* Linting
* Security scanning
* Unit tests

Purpose:

Prevent bad code from entering the repository.

---

# Common Git Mistakes

* Forgetting to pull before pushing
* Force-pushing shared branches
* Committing secrets
* Poor commit messages
* Ignoring merge conflicts
* Not using `.gitignore`

---

# Git at Scale

Topics commonly used in larger organisations:

* Git LFS
* Monorepos
* Sparse Checkout
* Submodules
* GitOps
* Server-side Hooks
* CI/CD Integration

---

# Git Security & Secrets Hygiene

Never commit:

* Passwords
* API Keys
* Access Tokens
* SSH Private Keys

Tools commonly used:

* git-secrets
* TruffleHog
* Gitleaks

Always use:

```text
.gitignore
```

for sensitive files and environment variables.

---

# Key Takeaway

Git is far more than a tool for storing code.

It provides a complete system for tracking changes, collaborating safely, recovering from mistakes, automating workflows, and managing software development at scale.

Understanding Git deeply is a fundamental skill for Software Engineering, Cloud Engineering, and DevOps.


