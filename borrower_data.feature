Feature: Add Borrower Book

   @positive_case
    Scenario: Admin want add borrower data
        #preconditions
        Given Admin already in Borrower data page

        
        #Step-step Test Case
        When Admin click Add Borrower button
        And Admin input Name field
        And Admin input Email field
        And Admin input Address field
        And Admin input Phone Number field
        And Admin input KTP photo
        And Admin select Date of Birth field
        And Admin click save button
        
        
        #Expected result
        Then Admin can see message that data of borrower has been successfully added
