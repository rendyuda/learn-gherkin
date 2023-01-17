Scenario: Login

    @positive_case  
    Scenario: Admin can login to homepage of library web application
        Given Admin already access login page   
        When admin fill registered email
        And admin fill password
        And admin click login button
        Then admin redirected to homepage library web application
        And admin succesfully login


    @negative_case  
    Scenario Outline: admin can not login to homepage library web applicatiom
        Given admin already access login page
        When admin fill login field with "<condition>"   
        And admin click login button
        Then admin can not login to homepage    
        And  admin can see "your password or email is incorrect" message
        Examples:
            | case_id | condition              |
            | C150    | unregistered email     |
            | C158    | unregistered password  |