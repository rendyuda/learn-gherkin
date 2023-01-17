@positive_case
    Scenario: Admin want to manage book stock
    # preconditions here
        Given Admin login on Library Web Application
    # Test case steps here
        When Admin already in booklist page
        And Admin search book by book name/author/release date/ISBN
        And Admin click the "detail" button to see the detail information of book especially to edit the book stock
        And Admin click "+" button to add stock or click "-" button to decrease stock or type on the value box
        And Admin click "update" button
    # Expected result here
        Then Notification pop up books stock successfully update


@negative_case
    Scenario: Admin want to manage book stock
    # preconditions here
        Given Admin login on Library Web Application
    # Test case steps here
        When Admin already in booklist page
        And Admin search book by book name/author/release date/ISBN
        And Admin click the "detail" button to see the detail information of book especially to edit the book stock
        And admin type string data/alphabet/symbols on the value box
        And Admin click "update" button
    # Expected result here
        Then Notification pop up books stock failed to update