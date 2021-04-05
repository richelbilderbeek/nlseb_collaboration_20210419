# Online collaboration using git and GitHub

[NLSEB PhD and Postdoc Day](http://nlseb.nl/nlseb2021-phd-postdoc-meeting/) workshop: online collaboration using git and GitHub

 * When: Monday April 19 2021 10.45 - 12.15 in Workshop session I
 * Where: 
    * Main room: Zoom (link will be here when known)
    * Breakout rooms: Zoom (later)

## Description

In this hands-on introductory workshop,
we will work on a (nonsense, plain-text) manuscript together as a team.
As an exemplary team member, you will create tasks,
assign yourself and show what you are working on,
using a GitHub Project Page.
Additionally, using git, we will keep a version history, that both
allows us to work independently, as well as to merge our work.

It is assumed you have a (free) GitHub account
and git (e.g. 'Git Bash' for Windows) installed.

Please send your GitHub username to richel@richelbilderbeek.nl
before April 19th 9:00.

## Schedule

When |What
-----|-------
10:45|Start
11:30|Break
11:45|Continue
12:15|End

## Detailed schedule

 * Title: Online collaboration using git and GitHub
 * Why important
 * Goal: Having worked with git and GitHub for at least 2 cycles
   * Observable: 
     * all participants assigned to an Issue and put it in the right column
     * at least 2 commits per participant
 * Demo: project page, assign Issue
 * Put people in groups based on their name, 
   there should be at least 2 participants per section
 * Demo: get started: clone, cd and edit
 * Make participants clone and edit manuscript
 * Demo: basic workflow
 * Make participants add, commit, push, until merge conflict
 * Demo: merge conflict: why important, how to fix it, demo
 * Make participants add, commit, push, and solve merge conflicts
 * Demo: branching


## Cheat sheet

### Getting started

Do this once:

```
git clone https://github.com/richelbilderbeek/nlseb_collaboration_20210419.git
git config --global user.name "richelbilderbeek"
git config --global user.email richel@richelbilderbeek.nl
```

Then always start with:

```
cd nlseb_collaboration_20210419
```

### Main workflow

```
git pull
notepad article.md
git add .
git commit -m "What I did, progress #314"
git push
```

### Main workflow

```
git checkout richel
git merge develop
```

### Misc

Show the status:

```
git status
```

Give password once per 10 hours:

```
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=36000'
```

