@positive_case 
Scenario: Admin can see all of books in books list page
    Given Admin already login to homepage   
    When Admin click books list button
    Then admin can see all of books


@positive_case
Scenario: Admin can sort the books by book name and release date
    Given Admin already redirect into books list page
    When Admin click sort button "<condition>"  
    Then admin can see book sorted
    Examples:
        | case_id | condition | 
        | C92  | sort by ascending  | 
        | C93  | sort by descending |
        | C94  | sort by date       |