# Vox Pupuli Election Officer Tutorial

This document describes the steps an **Election Officer** needs to perform to organize and run a Vox Pupuli PMC election.

It focuses only on the practical tasks required during the election process.

---

# 1. Prepare the Election Documentation

All election documentation is stored in the Vox Pupuli plumbing repository.

Repository:

https://github.com/voxpupuli/plumbing

## Create a new election folder

Navigate to:

```
share/elections/
```

Create a new folder using the following naming convention:

```
YYYY-MM
```

Example:

```
share/elections/2026-02/
```

## Create the election markdown file

Inside the election folder create a file named:

```
YYYY-MM.md
```

Example:

```
share/elections/2026-02.md
```

This file should contain:

- an overview of the election
- the timeline
- a list of candidates
- links to candidate nominations

## Store candidate nominations

Candidate nominations should be placed inside the new folder.

Example structure:

```
share/elections/2026-02/

├─ candidate1.md
├─ candidate2.md
```

Each candidate file may contain:

- a nomination statement
- a short biography
- a motivation for running

The Election Officer should maintain the candidate list in the main election markdown file.

---

# 2. Start the Nomination Phase

The nomination phase typically lasts:

```
about 2 weeks
```

During this phase the Election Officer should:

1. allow candidates to submit their nomination files
2. keep the candidate list updated in the election markdown file

---

# 3. Announce the Nomination Phase

The nomination phase must be announced publicly.

## Create a blog post

Repository:

https://github.com/voxpupuli/voxpupuli.github.io

Create a new post in:

```
_posts/
```

The blog post should include:

- announcement of the election
- nomination instructions
- nomination deadline
- link to the election documentation

## Inform the mailing list

Send a message to the Vox Pupuli mailing list including:

- start of nominations
- nomination deadline
- link to the election documentation

---

# 4. Prepare the Voting Phase

After the nomination phase closes, prepare the vote.

Typical voting duration:

```
about 2 weeks
```

Historically Vox Pupuli elections have used the CIVS voting platform:

https://civs1.civs.us/civs_create.html

---

# 5. Configure the CIVS Vote

Create a new poll and add all candidates from the nomination phase.

## Number of winners

The number of winners must match the number of PMC seats.

Currently:

```
7 seats
```

## Candidate naming

Candidates should be listed **using their community nicknames** (as they are commonly known in Vox Pupuli).

Example:

```
NickName (Real Name)
```

---

## Required CIVS options

Ensure the following options are configured:

```
Poll visibility: Public

Number of winners: 7 (Current PMC Seats)

Do not release results to all voters

Allow voters to select “no opinion” for some choices

Disable: Enable detailed ballot reporting
```

---

# 6. Announce the Voting Phase

Once the CIVS poll is created, announce the vote.

## Blog post

Create a blog post in:

```
voxpupuli.github.io/_posts
```

Include:

- voting link
- voting deadline
- list of candidates
- link to election documentation

## Mailing list

Send a message to the mailing list including:

- voting link
- voting deadline
- link to election documentation

---

# 7. Close the Election

After the voting deadline:

1. retrieve the results from CIVS
2. determine the elected candidates
3. document the results

---

# 8. Publish the Results

The results must be published in three places.

## Update the election markdown file

Update:

```
share/elections/YYYY-MM/YYYY-MM.md
```

Add:

- final results
- list of elected PMC members
- date of election closing

## Create a blog post

Create a results announcement in:

```
voxpupuli.github.io/_posts
```

Include:

- election results
- elected PMC members
- thank you message to voters and candidates

## Inform the mailing list

Send a final message including:

- election results
- names of the elected PMC members
- closing remarks

---

# Summary

Typical election timeline:

| Phase | Duration |
|------|------|
| Preparation | a few days |
| Nomination phase | ~2 weeks |
| Voting phase | ~2 weeks |
| Result publication | immediately after voting ends |

If you have questions during the process, the **previous Election Officer or the Vox Pupuli community will be happy to help**.