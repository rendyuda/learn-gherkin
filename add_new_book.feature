Feature: Add new book
 
@positive_case
Scenario: Admin want to add new book data
   Given admin already redirect to homepage
   When admin click "Add New Book" page
   And Admin input new book name
   And admin input author name
   And admin select book release date
   And addmin input ISBN number
   And admin add book cover image
   And admin input book stock
   Then admin successfully added new book data information
 
@negative_case
Scenario Outline: Admin can't add new book data
   Given admin already redirect to homepage
   When admin click "add new book" page
   And admin input data field with "<condition>"
   Then admin can't add new book data
   Examples:
       | case_id   | condition         |
       | C159      | cover image empty |
