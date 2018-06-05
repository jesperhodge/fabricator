# Contributing to this project

This project is intended to collaborate on, learn, and help each other. We are happy for anyone who likes to join us. We aim to make it very beginner friendly so you can join at any skill level.

## Joining as a beginner

We try to make setting up the project as simple as possible but that is always a challenge to anyone, especially a beginner - so ask for help if you are stuck!

Expect to ask a lot of questions and be active if you want to learn something. We will happily answer as much as we can manage, but also try to find your own answers and have and own your own opinions.

It is important especially as a beginner not to be passive but to look at the project, try to understand things, and suggesting / creating your own features.

We encourage you to also do code reviews of other people's code to learn, give feedback, ask questions, criticize constructively and get involved. Never be intimidated.

## Collaboration

It's really easiest just to contact the project owner at jhodge@outlook.de to set you up as a collaborator. There are no requirements.

## If you're not a collaborator or not yet

The same rules go for you as for collaborators, but you are not allowed to merge anything onto master yourself, and code reviews will generally be done by collaborators except if you ask to do some.

Instead of creating branches please fork the project, create a branch directly mirroring and referencing an issue and then create a pull request onto the original repository.

## Working on branches

DO NOT just push onto master. Furthermore:

Our work always pertains to an issue. As such, you may work on any issue that is not either already assigned or claimed in a comment, except for issues labelled 'meta' or 'assigned' or somehow marked as closed for assignment. You are encouraged to also split issues into smaller issues if that's possible and works well and work on one of them.

You SHALL assign yourself to an issue if you want to work on it. If that's not possible for some reason, make it clear in a comment that you're working on it.

You SHALL leave a comment EVERY WEEK BEFORE SATURDAY whether you are continuing to work on the issue in the next week. You may also keep the issue assigned if you're not available for a while and tell us first, depending on whether it's urgent or there are any reasons against it.

Inactive issues WILL be reassigned every weekend. If there is an issue with someone assigned to it that HAS BEEN inactive for a whole week and the assignee has neither worked on it nor given information if he or she is still active the issue will become unassigned and someone else can take it.

A new assignee on an issue that already had someone work on it should check whether there is a related branch or discussion and then either continue work on the branch or if they prefer start from scratch.

We assume that it's fine for you if someone else continues with the branch you worked on unless you tell us otherwise.

Every issue SHALL have exactly one feature branch unless there's a good reason to have more.

You SHALL reference the issue in your commit messages via "#issue-number", e.g. "#12" without the quotes.

## Feature Requests

Just open an issue, label as 'feature request', and write what feature you would like to see.

## What we would like to see from collaborators or active participants

These are not requirements but we still really ask you to help us out with this, especially if you are set as collaborator on the project.

You may spend as much or as little time on the project as you want - you can do a commit once and that's it or you can be very active.

It would be nice if you can take a part of the time you spend on the project to:

- do code reviews as much as possible
- take part in decisions about features and such
- have a look at what issues are needed to achieve the project's goals and just go ahead and create them.
- look at meta issues and define the necessary steps to implement the features in them by creating smaller concrete issues.
- if you currently actively like to do something on the project, just give some information before the weekend on what area you'd like to work on or how much time you'd like to spend on it the following week - any planning taking place on the weekend might create or free up a good task or issue for you to work on, with no deadline or requirement that you manage to finish anything.

## Pull Requests

Anyone can make a pull request via a fork or within the repository from a feature branch onto master (later also the staging or upcoming version branch).

DO NOT just merge a pull request onto master without further consideration.

A pull request SHALL be reviewed by a second person unless it is something trivial like a wording change or such.

If there is no other person available soon enough, IF you have contributed before and are familiar enough with the project you can review your pull request yourself and then merge it.

## Reviews

Reviews MUST be done in a nice, helpful, not commanding, constructive way. Don't comment "Do it like this" but rather say "This way would be a nice improvement", for example. Explain stuff to newcomers if they don't understand it. If you are harsh or judgmental or generally not nice to the people you review that is very bad and in the worst case you may be unassigned from any feature or review if you do not change your behavior after being asked to do that.

On the other hand, if you are subject of a review, do not take criticism personally - even if it does in the heat and enthusiasm of the topic become harsh - and instead know that it is meant for you to improve, learn, consider, and become better. Sometimes the criticism may be outright wrong. Of course that might happen, even if you're a beginner. Keep thinking for yourself! Even then, the criticism might help you along just by you thinking about the topic and understanding it better, or helping the criticizer to understand better. And otherwise, even harshly formulated criticism is usually meant to help you. It is very valuable!

Tests and Linting MUST NOT FAIL. As long as there is no pipeline the reviewer runs the tests and linters to check.

There SHALL be as much test coverage as possible or makes sense on the backend, tending toward full test coverage and including edge cases. Basic Frontend tests to see if a component renders CAN be required by the reviewer for the most important components if they think it as necessary (after Jest or something is set up).

Code QUALITY should be held to a high standard, code be easy to refactor later, and a common styleguide (linting rules) followed. Everything should fit nicely with the project and its architecture. Otherwise the reviewer shall suggest improvements.

The issue SHALL be tested manually unless the automatic tests make it clear everything is working.

The reviewer SHALL generally comment on possible improvements and allow the code author to make them instead of just fixing stuff themselves - so that the code author can learn how to improve their own code.

If you do need to do your own review, it means to just make sure that everything really works well and everything is tested and the code has good quality. It is good practice but of course not absolutely necessary to look over your own changes for improvements before you merge.

