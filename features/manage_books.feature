Feature: Manage Books
  In order show a library
  As an blogger
  I want to show books list


Scenario: Books List Extra
  Given the following books records
  | title  | author | rank    | isbn10      | isbn13        |
  | Book1  | auth1  | 4444    | 1234567890  | 1234567893456 |
  | Book2  | auth2  | 5555    | 1234567880  | 1234567893457 |
  When I go to the list of books
  Then I should see the books in this order:
    | Book1 |
    | Book2 |