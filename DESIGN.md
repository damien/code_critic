# Design

This document outline the design goals and architectural decisions that go into Code Critic.

## Project Goals

* Automate assignment of code reviews
* Avoid overloading code reviewers by distributing the number of reviews assigned to each reviewer
* Integration with raw Git repositories (Git on the local filesystem or a plain Git server)
* Integration with common hosted Git services and their APIs (Github, Atlassian Stash, Bitbucket, etc)
* Make the best possible effort to ensure a compromised instance of Code Critic will never leak sensitive information about the repositories it oversees.
