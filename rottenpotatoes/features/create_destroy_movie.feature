Feature: make sure create and destroy work
 
  As a concerned student
  So that I can my achieve my test coverage
  I want to make sure create and destroy work
  
Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |

Scenario: destroy works
  When I am on the details page for "Aladdin"
  And I press "Delete"
  Then I should see "Movie 'Aladdin' deleted."
  
Scenario: create a new movie
  When I am on the home page
  And I follow "Add new movie"
  And I fill in "Title" with "Harambe"
  And I select "R" from "Rating"
  And I press "Save Changes"
  Then I should see "Harambe was successfully created"
  And I should see "More about Harambe"
  