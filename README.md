# fabricator
A project management tool to coordinate open source teams.

Want to contribute? Just read our CONTRIBUTING.md.

### What's up next?

The following week we are focusing on getting user authentication up and running (Front- and Backend).

### About:

Ideas for how it will look like:

https://precursorapp.com/document/fabricator-17592207269868

This project is open to anyone, newcomer or professional, who is interested in helping out.

The goal is to create a website that can track and create issues on github
(and other sites like bitbucket or gitlab) and makes team coordination much easier.

Most professional software development teams have efficient workflows and external tools like JIRA or Confluence
that are not free and have a complicated user interface and functionality. For small, starting out open source
projects without support by developers who can work on it full- or half-time, it can be quite difficult to commu-
nicate efficiently about goals, tasks, assignees and issues.

A lot of planning will be very inefficient because it is not concentrated on github etc plus maybe one other site but
takes place on slack as a chat tool, maybe trello for planning, etc etc. So discussions may need to be repeated 3
or 4 times before everyone can agree on what issue to create by whom and who to assign it since the open source
team may be remote from each other, have no hierarchy, and

This website should be able to coordinate this by putting everything in one place and, differently from
more complicated tools, make everything simple and give a good overview of the project and the coordination.

The projects will be organized in (user) stories, larger features, that can be broken down into issues directly.
Chats are scoped to the issue and a user has an immediate color-coded overview over which discussions need his
feedback, and what tasks and related decisions and work is assigned to him (or he assigned to himself).

This makes it very easy to communicate and more than that, it makes it easy to see where a story is insufficiently
broken down into issues, where issues are incomplete, and what the next steps to be taken in general are.

All of this is expandable by more features which can be added later once the first version is complete.


## Instructions for contributors

### Initial setup
1. Make sure you have ruby installed. Type `ruby -v` to check.

2. `gem install rails` or `sudo gem install rails -v 5.1.6`

3. `bundle install` or `sudo bundle install`

4. `yarn install`

### How to run the app

To run the server: `rails server`

### Set up database

1. Install MySQL. On a mac, you can do: `brew install mysql`
2. `rake db:create`
3. `rake db:migrate`
Note: in your secrets.yml file, you'll see a db_user=root and a blank value for the password.

Don't forget to start the mysql server! Depending on your mysql installation and OS, you can do `mysql.server start`.

### Start the React server
1. `bin/webpack-dev-server`
This runs at the same time as `rails server`
