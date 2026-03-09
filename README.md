# Git Repository Project – Calculator (Branching & Merge Conflict)

## Project Overview

This project demonstrates the implementation of **Git Local Repository concepts** including:

* Git configuration
* Git repository initialization
* File creation and tracking
* Commit history
* Branch creation and switching
* Branch merging
* Merge conflict creation and resolution
* Connecting to GitHub remote repository
* Pushing branches to GitHub

A **Bash calculator script** was developed containing **five arithmetic functions**, and Git branching was used to simulate work by multiple developers.

---

# Technologies Used

* Git
* GitHub
* Bash Shell Script
* Linux / Git Bash Terminal

---

# Project File

```
calculator.sh
```

This script implements **five basic arithmetic functions**.

### Functions Implemented

1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Modulus

---

# Git Configuration

Git user details were configured using the following commands:

```bash
git config --global user.username "Yourname"
git config --global user.email "examplee@email.com"
git config --list
```

---

# Initialize Local Git Repository

```bash
git init
git branch -M main
```

This created the **main branch** as the primary branch.

---

# Project File Creation

The calculator script was created using:

```bash
touch calculator.sh
```

Git status was checked before adding the file:

```bash
git status
```

---

# First Commit (Main Branch)

The calculator script was staged and committed.

```bash
git add calculator.sh
git commit -m "Initial commit : Added Calculator with 5 functions"
```

Commit history was verified using:

```bash
git log --oneline
```

---

# Connecting to GitHub Remote Repository

The remote repository was added and verified.

```bash
git remote add origin https://github.com/xrahulcrx/Git_Project_Submission
git remote -v
```

Push main branch:

```bash
git push -u origin main
```

---

# Branching Strategy

Three branches were used in the project:

```
main
developer1
developer2
```

Branch hierarchy:

```
main
 ├── developer1
 └── developer2
```

---

# Developer1 Branch

A new branch was created and switched to:

```bash
git branch developer1
git checkout developer1
```

Developer1 modified the **addition function** in the calculator script.

Changes were committed:

```bash
git add calculator.sh
git commit -m "Developer1 updated the addition function"
```

Commit history verified:

```bash
git log --oneline
```

---

# Developer2 Branch

Developer2 branch was created from the **main branch**.

```bash
git switch main
git checkout -b developer2
```

Developer2 also modified the **same addition function**, which will later cause a merge conflict.

Changes were committed:

```bash
git add calculator.sh
git commit -m "Developer2 updated the addition function"
```

---

# Merging Branches

The project then merged branches into **main**.

Switch to main branch:

```bash
git checkout main
```

Merge developer1:

```bash
git merge developer1
```

Merge developer2:

```bash
git merge developer2
```

Because both developers modified the same section of the file, **Git generated a merge conflict**.

---

# Merge Conflict Example

Git inserted conflict markers in the file:

```
<<<<<<< HEAD
Developer1 Version
=======
Developer2 Version
>>>>>>> developer2
```

---

# Conflict Resolution

As per the project requirement:

> Merge conflicts must be resolved using the **latest change only**.

Therefore, the **Developer2 version was kept**, and the conflict markers were removed.

The resolved file was committed.

```bash
git add calculator.sh
git commit -m "Resolved merge conflicts using the latest developer2 changes"
```

---

# Pushing Branches to GitHub

All branches were pushed to the remote repository.

```bash
git push origin developer1
git push origin developer2
git push origin main
```

---

# Git History Visualization

Commit graph can be viewed using:

```bash
git log --oneline --graph --all --decorate
```

Example structure:

```
*   bd1e489 (HEAD -> main, origin/main) Resolved merge conflicts using the latest developer2 changes
|\  
| * b6fe439 (origin/developer2, developer2) Developer2 updated the addition function
* | b712423 (origin/developer1, developer1) Developer1 updated the addition function
|/  
* 1be78df Initial commit : Added Calculator with 5 functions



```

---

# Project Mapping

### Branch Creation

```
main → developer1  
main → developer2
```

### Branch Merging

```
developer1 → main  
developer2 → main
```

---

# Git Commands Used in the Project

Commands executed during the project:

```
git config
git init
git branch
git checkout
git switch
git add
git commit
git status
git log
git merge
git remote
git push
```

---

# Conclusion

This project successfully demonstrates:

* Git repository setup
* Branch creation
* Multiple developer workflow
* Commit tracking
* Branch merging
* Merge conflict generation
* Conflict resolution
* Remote repository integration with GitHub

---


Git Local Repository & Branching Demonstration Project
