# code_critic [![Build Status](https://travis-ci.org/damien/code_critic.svg?branch=develop)](https://travis-ci.org/damien/code_critic) [![Code Climate](https://codeclimate.com/github/damien/code_critic/badges/gpa.svg)](https://codeclimate.com/github/damien/code_critic) [![Test Coverage](https://codeclimate.com/github/damien/code_critic/badges/coverage.svg)](https://codeclimate.com/github/damien/code_critic)

Code Critic is a tool for automatically and intelligently assigning
one or more people to perform a code review.

# Goals

Code Critic is a work in progress. The project goals are as follows:

  1. Provide a simple, automated way to assign reviewers to a pull/merge request
  2. Make intelligent choices about optimal reviewer selections based on
     the level of expertise of a given reviewer for any given part of a codebase
  3. Attempt to optimize throughput of code reviews by evenly distributing
     the number of requested code reviews per reviewer.

# Running Code Critic

  1. Check out the Code Critic git repository:
     `git clone https://github.com/damien/code_critic.git`
  2. Run the setup script:
     `cd code_critic ; bin/setup`
  3. Start Code Critic:
     `bundle exec rails serve`

# License

This code is released under the [MIT license](LICENSE)
