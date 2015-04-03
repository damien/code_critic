# Design

This document outline the design goals and architectural decisions that go into Code Critic.

## Project Goals

* Automate assignment of code reviews
* Avoid overloading code reviewers by distributing the number of reviews assigned to each reviewer
* Integration with raw Git repositories (Git on the local filesystem or a plain Git server)
* Integration with common hosted Git services and their APIs (Github, Atlassian Crucible, Bitbucket, etc)
* Make the best possible effort to ensure a compromised instance of Code Critic will never leak sensitive information about the repositories it oversees.

## Related Systems

References to systems or software that provide functionality that we would like
to emulate or reproduce within Code Critic.

* [Bors](https://github.com/graydon/bors)
  Integration robot for buildbot and github, used by Mozilla's Rust project to
  [manage github pull requests](https://github.com/rust-lang/rust/blob/master/CONTRIBUTING.md#pull-requests)
* [Crucible](https://www.atlassian.com/software/crucible/overview) from Atlassian
  Crucible is a product focused around collaborative peer code reviews.
  It has a number of interesting and useful features, including customizable workflows,
  a rich notification system, and ways to trigger automated quality/complicance
  checks.
