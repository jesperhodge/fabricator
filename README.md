# fabricator
A project management tool to coordinate open source teams.

Want to contribute? Just read our CONTRIBUTING.md.

### What did we achieve last week?

We successfully switched over to Postgresql and drafted a first sketch on how the app may look.

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

## Core features for the app!!
- (if possible real-time updating) chat scoped to each issue so you don't have to discuss stuff in slack but then transfer everything to the issues when you have decided something.

- different notifications for if you are mentioned in the chat on one of the issues or if there are open questions or To Do's concerning you. the notifications are really clear and visible.

- As you can see in the sketch, you also have an overview page with a list of issues where you can create some, change them, have the related chat or commenting, and the issues are broken down into larger "epics" and actual issues directly mirroring github (or gitlab, bitbucket...) issues. You can change issues into epics directly.

If possible find a way to delve even deeper into this functionality so you can immediately see which epics require more issues, which issues require definition (that then every project member can take part in much easier), and that there is a kind of queue of suggestions for each user what they can do next to advance the project - like define issues, finish to do's or issues, respond to questions in issue comments, etc, and the admins can change what is included in that queue. But that part is a bit more complex and the UX has to be planned out and really good for it to work.

## Instructions for contributors

### Database
We just switched to postgresql. You need to have it installed and running for the app to work.

### Initial setup
1. Make sure you have ruby installed. Type `ruby -v` to check.

2. `gem install rails` or `sudo gem install rails -v 5.1.6`

3. `bundle install` or `sudo bundle install`

4. `yarn install`

5. `rake db:create`

6. `rake db:migrate`

### How to run the app

To run the server: `rails server`

### Start the React server
1. `bin/webpack-dev-server`
This runs at the same time as `rails server`
