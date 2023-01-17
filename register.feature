Feature: Register   

    @positive_case
    Scenario: admin want to create new account
        Given admin already in registered page  
        When admin input organization name
        And admin input owner name
        And admin input address
        And admin input phone number
        And admin input email
        And admin input password
        And admin input verify password 
        And admin click register button
        Then admin can see the success toast message
        And admin redirected to the login page  


    @negative_case
    Scenario: admin can not create new account due to empty organization name
        Given admin already in registered page  
        When admin leave organization name field empty
        And admin input owner name
        And admin input address
        And admin input phone number
        And admin input email
        And admin input password
        And admin input verify password 
        And admin click register button
        Then admin can see the success toast message
        And admin redirected to the login page  

    @negative_case
    Scenario Outline: admin can not create new account
        Given admin already in registered page
        When admin input registration field with "<condition>"
        And admin click the register button
        Then admin can not create new account
        Examples:
            | case_id | condition                       |
            | C51     | organization name field empty   |   
            | C52     | owner field empty               |
            | C53     | address field empty             |
            | C54     | email field empty               |