As part of the Scholastic interview process for Ruby on Rails software engineering positions,
we require that every candidate clones this git repository, completes the requested
exercises, commit your work to a local repository, and send the repository to us.

Setup
=====
1. Clone the rails_interview repository onto your development environment.
2. Setup the Rails installation using Bundler and point to the included sqlite database.

Required Excercises
===================

###User Story 1
As an authenticated user, I shall be able to add a Book to the system
with the following fields:

* Title - 255 varchar
* Author - 255 varchar
* ISBN 10 - 10 digit integer
* ISBN 13 - 13 digit integer
* Rank - 4 digit integer

While adding a new Book, I shall be promoted with an error if a book
with the same ISBN 10 or ISBN 13 already exists in the system. I shall also
be prompted with an error if an invalid ISBN is entered (numbers only, must enter all digits).

1. Add rspec tests to ensure the requirements are satisfied.
2. Add the required fields and logic to the Book model to meet the above requirements.
3. Fix broken tests and ensure all tests pass and have coverage over the requirements.

*Note: You may use Active Admin or any other admin UI gem to achieve these requirements.

###User Story 2
As an anonymous user, when I visit the homepage I shall see a listing of all
books entered into the system sorted ascending by the rank assigned to the book. Each
book record shall display the following fields in the following order:

* Title - Truncated after 65 chars
* Author
* ISBN 10
* ISBN 13

If multiple book records have the same rank, the offending records shall be sorted alphabetically by title.

1. Add a Cucumber test to ensure that books are displayed properly and are sorted properly.
2. Add the Book display templates and view logic to the books_by_popularity view.
3. Ensure your Cucumber test passes and has coverage over the requirements.

*Note: You may use any web driver for Cucumber, though, Watir is recommended.

Submitting Application
======================
1. Add your resume to the doc directory.
2. Zip your local copy of the repository with all code and resume committed and email the zip to the requesting interviewer.
